// Read-only inspect: list all projects with the fields that drive ordering.
// Usage: SUPABASE_URL=... SUPABASE_SECRET=... node scripts/list-projects.mjs
import { createClient } from '@supabase/supabase-js';

const admin = createClient(process.env.SUPABASE_URL, process.env.SUPABASE_SECRET, {
  auth: { autoRefreshToken: false, persistSession: false },
});

const { data, error } = await admin
  .from('projects')
  .select('slug,title,category,year,status,sort_order')
  .order('category', { ascending: true })
  .order('sort_order', { ascending: true })
  .order('title', { ascending: true });

if (error) {
  console.error('query failed:', error.message);
  process.exit(1);
}

const pad = (s, n) => String(s ?? '').padEnd(n).slice(0, n);
console.log(pad('CATEGORY', 12), pad('YEAR', 6), pad('STATUS', 10), pad('SORT', 5), pad('TITLE', 24), 'SLUG');
for (const p of data) {
  console.log(
    pad(p.category, 12),
    pad(p.year, 6),
    pad(p.status, 10),
    pad(p.sort_order, 5),
    pad(p.title, 24),
    p.slug
  );
}
console.log(`\n${data.length} projects total.`);
