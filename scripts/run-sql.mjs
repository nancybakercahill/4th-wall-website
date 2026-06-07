// Run a .sql file against the database in DATABASE_URL.
// Usage: DATABASE_URL=... node scripts/run-sql.mjs supabase/migrations/0001_init.sql
import { readFileSync } from 'node:fs';
import pg from 'pg';

const file = process.argv[2];
if (!file) {
  console.error('Usage: node scripts/run-sql.mjs <path-to.sql>');
  process.exit(1);
}
const connectionString = process.env.DATABASE_URL;
if (!connectionString) {
  console.error('DATABASE_URL env var is required');
  process.exit(1);
}

const sql = readFileSync(file, 'utf8');
const client = new pg.Client({ connectionString, ssl: { rejectUnauthorized: false } });

try {
  await client.connect();
  await client.query(sql);
  console.log(`✓ Ran ${file}`);
} catch (err) {
  console.error(`✗ Failed on ${file}:`, err.message);
  process.exitCode = 1;
} finally {
  await client.end();
}
