import Link from 'next/link';
import { notFound } from 'next/navigation';
import { createClient } from '../../../../../lib/supabase/server';
import type { Project, ProjectMedia } from '../../../../../lib/types';
import ProjectForm from '../../../../../components/admin/ProjectForm';
import MediaManager from '../../../../../components/admin/MediaManager';
import DeleteProjectButton from '../../../../../components/admin/DeleteProjectButton';
import { updateProject } from '../../../actions';

export default async function EditProjectPage({
  params,
  searchParams,
}: {
  params: Promise<{ id: string }>;
  searchParams: Promise<{ saved?: string }>;
}) {
  const { id } = await params;
  const { saved } = await searchParams;
  const supabase = await createClient();

  const { data: project } = await supabase.from('projects').select('*').eq('id', id).maybeSingle();
  if (!project) notFound();

  const { data: media } = await supabase
    .from('project_media')
    .select('*')
    .eq('project_id', id)
    .order('sort_order', { ascending: true });

  return (
    <div>
      <div className="flex items-center justify-between">
        <Link href="/admin/projects" className="font-display text-xs uppercase tracking-widest text-ink/50 hover:text-accent">
          ← Projects
        </Link>
        <Link
          href={`/projects/${(project as Project).slug}`}
          target="_blank"
          className="font-display text-xs uppercase tracking-widest text-ink/50 hover:text-accent"
        >
          View ↗
        </Link>
      </div>

      <h1 className="mt-4 text-2xl font-semibold tracking-tight">{(project as Project).title}</h1>

      {saved && (
        <p className="mt-4 rounded-md bg-green-100 px-4 py-2 text-sm text-green-800">Saved.</p>
      )}

      <div className="mt-8">
        <ProjectForm action={updateProject.bind(null, id)} project={project as Project} />
      </div>

      <hr className="my-12 border-ink/10" />

      <MediaManager projectId={id} media={(media as ProjectMedia[]) ?? []} />

      <hr className="my-12 border-ink/10" />

      <div>
        <h2 className="text-lg font-semibold text-accent">Danger zone</h2>
        <p className="mt-1 text-sm text-ink/60">Permanently delete this project and its media.</p>
        <div className="mt-4">
          <DeleteProjectButton id={id} title={(project as Project).title} />
        </div>
      </div>
    </div>
  );
}
