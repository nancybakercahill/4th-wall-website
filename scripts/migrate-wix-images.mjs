// One-time migration: copy every Wix-hosted image (static.wixstatic.com) into our
// own Supabase `media` bucket and repoint the database at the copies, so the site
// no longer depends on Wix. Idempotent: re-running re-uses deterministic paths and
// skips rows already migrated. Requires env: DATABASE_URL, NEXT_PUBLIC_SUPABASE_URL,
// SUPABASE_SERVICE_ROLE_KEY.
import pg from 'pg';
import crypto from 'node:crypto';

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const BUCKET = 'media';
if (!SUPABASE_URL || !SERVICE_KEY) {
  console.error('Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY');
  process.exit(1);
}

const extFor = (url, contentType) => {
  const m = url.split('?')[0].match(/\.([a-z0-9]{3,4})(?:$|\/)/i);
  if (m) return m[1].toLowerCase().replace('jpeg', 'jpg');
  if (contentType?.includes('png')) return 'png';
  if (contentType?.includes('webp')) return 'webp';
  if (contentType?.includes('gif')) return 'gif';
  return 'jpg';
};

const c = new pg.Client({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });
await c.connect();

// Gather every distinct Wix URL across the three columns that can hold one.
const urls = new Set();
for (const q of [
  "select cover_image_path u from public.projects where cover_image_path ilike '%wixstatic%'",
  "select url u from public.project_media where url ilike '%wixstatic%'",
  "select storage_path u from public.project_media where storage_path ilike '%wixstatic%'",
]) {
  (await c.query(q)).rows.forEach((r) => r.u && urls.add(r.u));
}
console.log(`Found ${urls.size} distinct Wix images to migrate.\n`);

const map = new Map(); // oldUrl -> new relative storage path
let done = 0, failed = 0;
for (const url of urls) {
  try {
    const res = await fetch(url);
    if (!res.ok) throw new Error(`download HTTP ${res.status}`);
    const buf = Buffer.from(await res.arrayBuffer());
    const ct = res.headers.get('content-type') || '';
    const path = `migrated/${crypto.createHash('sha1').update(url).digest('hex').slice(0, 20)}.${extFor(url, ct)}`;
    const up = await fetch(`${SUPABASE_URL}/storage/v1/object/${BUCKET}/${path}`, {
      method: 'POST',
      headers: {
        Authorization: `Bearer ${SERVICE_KEY}`,
        apikey: SERVICE_KEY,
        'Content-Type': ct || 'image/jpeg',
        'x-upsert': 'true',
      },
      body: buf,
    });
    if (!up.ok) throw new Error(`upload HTTP ${up.status} ${await up.text()}`);
    map.set(url, path);
    done++;
    process.stdout.write(`  ✓ ${done}/${urls.size}  ${path}  (${(buf.length / 1024).toFixed(0)} KB)\n`);
  } catch (e) {
    failed++;
    console.error(`  ✗ FAILED ${url}\n     ${e.message}`);
  }
}

// Repoint the database at the copies.
let rowsCover = 0, rowsUrl = 0, rowsPath = 0;
for (const [url, path] of map) {
  rowsCover += (await c.query('update public.projects set cover_image_path=$1 where cover_image_path=$2', [path, url])).rowCount;
  rowsUrl += (await c.query('update public.project_media set storage_path=$1, url=null where url=$2', [path, url])).rowCount;
  rowsPath += (await c.query('update public.project_media set storage_path=$1 where storage_path=$2', [path, url])).rowCount;
}

console.log(`\nUploaded: ${done}  Failed: ${failed}`);
console.log(`DB repointed — covers: ${rowsCover}, media(url): ${rowsUrl}, media(path): ${rowsPath}`);

// Verify nothing Wix-hosted remains.
const left = (await c.query(
  "select count(*)::int n from (select 1 from public.projects where cover_image_path ilike '%wixstatic%' union all select 1 from public.project_media where url ilike '%wixstatic%' or storage_path ilike '%wixstatic%') t"
)).rows[0].n;
console.log(`Remaining Wix references in DB: ${left}`);
await c.end();
