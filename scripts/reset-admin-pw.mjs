// One-off admin password reset using a Supabase secret key.
// Usage: SUPABASE_URL=... SUPABASE_SECRET=... NEW_PW=... [TARGET_EMAIL=...] node scripts/reset-admin-pw.mjs
import { createClient } from '@supabase/supabase-js';

const url = process.env.SUPABASE_URL;
const secret = process.env.SUPABASE_SECRET;
const newPw = process.env.NEW_PW;
const target = process.env.TARGET_EMAIL?.toLowerCase();

if (!url || !secret) {
  console.error('Missing SUPABASE_URL or SUPABASE_SECRET');
  process.exit(1);
}

const admin = createClient(url, secret, { auth: { autoRefreshToken: false, persistSession: false } });

const { data, error } = await admin.auth.admin.listUsers();
if (error) {
  console.error('listUsers failed:', error.message);
  process.exit(1);
}

const users = data.users ?? [];
console.log(`Found ${users.length} user(s):`);
for (const u of users) console.log(`  - ${u.email}  (id ${u.id}, last sign-in ${u.last_sign_in_at ?? 'never'})`);

if (!newPw) {
  console.log('\nNo NEW_PW provided — listing only, no changes made.');
  process.exit(0);
}

let user = users.find((u) => u.email?.toLowerCase() === target);
if (!user && users.length === 1) user = users[0];

if (!user) {
  console.error('\nCould not pick a user to update. Re-run with TARGET_EMAIL set to one of the emails above.');
  process.exit(1);
}

const { error: upErr } = await admin.auth.admin.updateUserById(user.id, { password: newPw });
if (upErr) {
  console.error('Password update failed:', upErr.message);
  process.exit(1);
}
console.log(`\n✅ Password updated for ${user.email}`);
