import { getPublishedProjects, getSettings } from '../lib/queries';
import { categoryByValue } from '../lib/categories';
import type { Category } from '../lib/types';
import ProjectCard from './ProjectCard';
import EmptyState from './EmptyState';

export default async function CategoryIndex({ category }: { category: Category }) {
  const meta = categoryByValue(category)!;
  const [projects, settings] = await Promise.all([
    getPublishedProjects(category),
    getSettings(),
  ]);
  const blurb = settings[`blurb_${category}`] || meta.blurb;

  return (
    <div className="container-page py-14">
      <p className="eyebrow">{projects.length} project{projects.length === 1 ? '' : 's'}</p>
      <h1 className="mt-3 text-4xl font-semibold tracking-tight sm:text-5xl">{meta.label}</h1>
      <p className="mt-4 max-w-2xl text-lg text-ink/70">{blurb}</p>

      <div className="mt-12">
        {projects.length > 0 ? (
          <div className="grid grid-cols-2 gap-x-5 gap-y-10 md:grid-cols-3 lg:grid-cols-4">
            {projects.map((p) => (
              <ProjectCard key={p.id} project={p} />
            ))}
          </div>
        ) : (
          <EmptyState message="No projects here yet — add them from the admin." />
        )}
      </div>
    </div>
  );
}
