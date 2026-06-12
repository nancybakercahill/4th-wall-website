import Link from 'next/link';
import { createClient } from '../../lib/supabase/server';

export default async function AdminDashboard() {
  const supabase = await createClient();
  const { count: total } = await supabase
    .from('projects')
    .select('*', { count: 'exact', head: true });
  const { count: published } = await supabase
    .from('projects')
    .select('*', { count: 'exact', head: true })
    .eq('status', 'published');

  return (
    <div>
      <h1 className="text-2xl font-semibold tracking-tight">Dashboard</h1>
      <p className="mt-2 text-sm text-ink/60">Manage 4th Wall content.</p>

      <div className="mt-8 grid gap-4 sm:grid-cols-3">
        <div className="rounded-lg border border-ink/10 bg-white p-6">
          <p className="font-display text-xs uppercase tracking-widest text-ink/50">Projects</p>
          <p className="mt-2 text-3xl font-semibold">{total ?? 0}</p>
        </div>
        <div className="rounded-lg border border-ink/10 bg-white p-6">
          <p className="font-display text-xs uppercase tracking-widest text-ink/50">Published</p>
          <p className="mt-2 text-3xl font-semibold">{published ?? 0}</p>
        </div>
        <div className="rounded-lg border border-ink/10 bg-white p-6">
          <p className="font-display text-xs uppercase tracking-widest text-ink/50">Drafts</p>
          <p className="mt-2 text-3xl font-semibold">{(total ?? 0) - (published ?? 0)}</p>
        </div>
      </div>

      <div className="mt-8 flex flex-wrap gap-3">
        <Link
          href="/admin/projects/new"
          className="rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent"
        >
          + New project
        </Link>
        <Link
          href="/admin/projects"
          className="rounded-md border border-ink/20 px-5 py-2.5 text-sm font-medium hover:border-accent hover:text-accent"
        >
          All projects
        </Link>
        <Link
          href="/admin/pages"
          className="rounded-md border border-ink/20 px-5 py-2.5 text-sm font-medium hover:border-accent hover:text-accent"
        >
          Edit pages
        </Link>
      </div>
    </div>
  );
}
