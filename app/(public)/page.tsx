import Link from 'next/link';
import { getPublishedProjects, isSupabaseConfigured } from '../../lib/queries';
import { CATEGORIES } from '../../lib/categories';
import ProjectCard from '../../components/ProjectCard';

export default async function HomePage() {
  const projects = await getPublishedProjects();
  const featured = projects.slice(0, 8);

  return (
    <>
      {/* Hero */}
      <section className="container-page pt-16 pb-14 sm:pt-24 sm:pb-20">
        <p className="eyebrow">Free · Augmented Reality · Public Art</p>
        <h1 className="mt-5 max-w-5xl font-display text-5xl font-medium leading-[0.95] tracking-tight sm:text-7xl lg:text-8xl">
          Digital artworks placed in the physical world.
        </h1>
        <p className="mt-7 max-w-2xl text-lg text-ink/70">
          4th Wall is a free augmented reality app by Nancy Baker Cahill. Explore every
          project — past, present, and upcoming through 2026.
        </p>
        <div className="mt-9 flex flex-wrap gap-3">
          <Link
            href="/public-art"
            className="border border-ink bg-ink px-7 py-3 text-sm font-medium uppercase tracking-wider text-paper transition-colors hover:bg-paper hover:text-ink"
          >
            Explore projects
          </Link>
          <Link
            href="/how-to-use"
            className="border border-ink px-7 py-3 text-sm font-medium uppercase tracking-wider transition-colors hover:bg-ink hover:text-paper"
          >
            How to use the app
          </Link>
        </div>
      </section>

      {/* Brick pattern divider */}
      <div className="wall-band h-3 w-full" aria-hidden />

      {/* Category browser */}
      <section className="container-page py-14">
        <div className="grid grid-cols-1 border-l border-t border-ink sm:grid-cols-2 lg:grid-cols-4">
          {CATEGORIES.map((c) => (
            <Link
              key={c.slug}
              href={`/${c.slug}`}
              className="group border-b border-r border-ink p-7 transition-colors hover:bg-ink hover:text-paper"
            >
              <p className="font-display text-xs uppercase tracking-[0.18em]">{c.label}</p>
              <p className="mt-4 text-sm text-ink/65 group-hover:text-paper/70">{c.blurb}</p>
              <span className="mt-6 inline-block text-sm">View →</span>
            </Link>
          ))}
        </div>
      </section>

      {/* Featured projects */}
      <section className="container-page pb-10">
        <div className="mb-8 flex items-end justify-between border-b border-ink pb-4">
          <h2 className="font-display text-3xl font-medium tracking-tight sm:text-4xl">
            Featured projects
          </h2>
          <Link
            href="/public-art"
            className="font-display text-xs uppercase tracking-[0.18em] hover:underline underline-offset-4"
          >
            View all →
          </Link>
        </div>

        {featured.length > 0 ? (
          <div className="grid grid-cols-2 gap-x-6 gap-y-12 md:grid-cols-3 lg:grid-cols-4">
            {featured.map((p) => (
              <ProjectCard key={p.id} project={p} />
            ))}
          </div>
        ) : (
          <div className="border border-dashed border-ink/30 px-6 py-16 text-center">
            <p className="font-display text-sm uppercase tracking-widest text-ink/50">
              {isSupabaseConfigured()
                ? 'No published projects yet. Add some from the admin.'
                : 'Connect Supabase (add keys to .env.local) to load projects.'}
            </p>
          </div>
        )}
      </section>
    </>
  );
}
