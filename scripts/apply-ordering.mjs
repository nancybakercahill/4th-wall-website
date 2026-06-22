// Pin featured projects, make everything else sort newest-first, and unpublish
// Slipstream Times Square. Idempotent — safe to re-run.
// Usage: SUPABASE_URL=... SUPABASE_SECRET=... node scripts/apply-ordering.mjs
import { createClient } from '@supabase/supabase-js';
const admin = createClient(process.env.SUPABASE_URL, process.env.SUPABASE_SECRET, {
  auth: { autoRefreshToken: false, persistSession: false },
});

const PINS = { free: 1, substrate: 2, cento: 3, corpus: 4 };
const BASELINE = 100; // unpinned: sort_order tie -> ordered by year DESC in the query

// 1. Reset every project to the baseline so year-desc governs the unpinned ones.
{
  const { error } = await admin.from('projects').update({ sort_order: BASELINE }).not('id', 'is', null);
  if (error) { console.error('baseline reset failed:', error.message); process.exit(1); }
  console.log(`Reset all projects to sort_order ${BASELINE}.`);
}

// 2. Pin the featured four.
for (const [slug, order] of Object.entries(PINS)) {
  const { data, error } = await admin.from('projects').update({ sort_order: order }).eq('slug', slug).select('slug');
  if (error) { console.error(`pin ${slug} failed:`, error.message); process.exit(1); }
  console.log(data?.length ? `Pinned ${slug} -> ${order}` : `WARNING: no project with slug "${slug}"`);
}

// 3. Unpublish Slipstream (not an AR project). Hidden from public, still in the DB.
{
  const { data, error } = await admin.from('projects').update({ status: 'draft' }).eq('slug', 'slipstream-times-square').select('slug,status');
  if (error) { console.error('unpublish slipstream failed:', error.message); process.exit(1); }
  console.log(data?.length ? `Unpublished slipstream-times-square (now ${data[0].status})` : 'WARNING: slipstream-times-square not found');
}

console.log('\nDone.');
