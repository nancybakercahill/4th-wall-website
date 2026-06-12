import Link from 'next/link';
import type { Project } from '../lib/types';
import { categoryByValue } from '../lib/categories';
import { mediaUrl } from '../lib/media';

export default function ProjectCard({ project }: { project: Project }) {
  const cover = mediaUrl(project.cover_image_path);
  const cat = categoryByValue(project.category);

  return (
    <Link href={`/projects/${project.slug}`} className="group block focus:outline-none">
      <div className="relative aspect-[4/5] overflow-hidden border border-ink bg-ink/5">
        {cover ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img
            src={cover}
            alt={project.title}
            className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-[1.04]"
          />
        ) : (
          <div className="wall-band flex h-full w-full items-center justify-center opacity-20" aria-hidden />
        )}
      </div>
      <div className="mt-3 flex items-baseline justify-between gap-3">
        <h3 className="font-display text-base font-medium leading-tight group-hover:underline underline-offset-4">
          {project.title}
        </h3>
        {project.year && (
          <span className="font-display text-xs text-ink/50">{project.year}</span>
        )}
      </div>
      <p className="mt-1 font-display text-[11px] uppercase tracking-[0.16em] text-ink/50">
        {cat?.label}
        {project.location ? ` · ${project.location}` : ''}
      </p>
    </Link>
  );
}
