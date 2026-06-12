import Link from 'next/link';
import ProjectForm from '../../../../components/admin/ProjectForm';
import { createProject } from '../../actions';

export default function NewProjectPage() {
  return (
    <div>
      <Link href="/admin/projects" className="font-display text-xs uppercase tracking-widest text-ink/50 hover:text-accent">
        ← Projects
      </Link>
      <h1 className="mt-4 text-2xl font-semibold tracking-tight">New project</h1>
      <p className="mt-2 text-sm text-ink/60">
        Save first to start adding gallery images. Set status to “Published” when you’re ready to go live.
      </p>
      <div className="mt-8">
        <ProjectForm action={createProject} />
      </div>
    </div>
  );
}
