import Link from 'next/link';
import { createClient } from '../../../lib/supabase/server';
import { categoryByValue } from '../../../lib/categories';
import type { Project } from '../../../lib/types';

export default async function AdminProjectsPage() {
  const supabase = await createClient();
  const { data } = await supabase
    .from('projects')
    .select('*')
    .order('category', { ascending: true })
    .order('sort_order', { ascending: true });
  const projects = (data as Project[]) ?? [];

  return (
    <div>
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-semibold tracking-tight">Projects</h1>
        <Link
          href="/admin/projects/new"
          className="rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent"
        >
          + New project
        </Link>
      </div>

      <div className="mt-8 overflow-hidden rounded-lg border border-ink/10 bg-white">
        <table className="w-full text-sm">
          <thead className="border-b border-ink/10 text-left font-mono text-xs uppercase tracking-widest text-ink/50">
            <tr>
              <th className="px-4 py-3">Title</th>
              <th className="px-4 py-3">Category</th>
              <th className="px-4 py-3">Year</th>
              <th className="px-4 py-3">Status</th>
              <th className="px-4 py-3"></th>
            </tr>
          </thead>
          <tbody className="divide-y divide-ink/5">
            {projects.length === 0 && (
              <tr>
                <td colSpan={5} className="px-4 py-10 text-center text-ink/50">
                  No projects yet.
                </td>
              </tr>
            )}
            {projects.map((p) => (
              <tr key={p.id} className="hover:bg-paper">
                <td className="px-4 py-3 font-medium">{p.title}</td>
                <td className="px-4 py-3 text-ink/60">{categoryByValue(p.category)?.label}</td>
                <td className="px-4 py-3 text-ink/60">{p.year ?? '—'}</td>
                <td className="px-4 py-3">
                  <span
                    className={`rounded-full px-2 py-0.5 text-xs font-medium ${
                      p.status === 'published'
                        ? 'bg-green-100 text-green-800'
                        : 'bg-ink/10 text-ink/60'
                    }`}
                  >
                    {p.status}
                  </span>
                </td>
                <td className="px-4 py-3 text-right">
                  <Link
                    href={`/admin/projects/${p.id}/edit`}
                    className="font-medium text-ink/70 hover:text-accent"
                  >
                    Edit
                  </Link>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
