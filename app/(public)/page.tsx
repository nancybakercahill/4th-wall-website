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
      <section className="container-page pt-16 pb-12 sm:pt-24 sm:pb-16">
        <p className="eyebrow">Free · Augmented Reality · Public Art</p>
        <h1 className="mt-4 max-w-4xl text-4xl font-semibold leading-[1.05] tracking-tight sm:text-6xl">
          Digital artworks placed in the physical world, viewable from your phone.
        </h1>
        <p className="mt-6 max-w-2xl text-lg text-ink/70">
          4th Wall is a free augmented reality app by Nancy Baker Cahill. Explore every project —
          past, present, and upcoming through 2026.
        </p>
        <div className="mt-8 flex flex-wrap gap-3">
          <Link
            href="/public-art"
            className="rounded-full bg-ink px-6 py-3 text-sm font-medium text-paper transition-colors hover:bg-accent"
          >
            Explore projects
          </Link>
          <Link
            href="/how-to-use"
            className="rounded-full border border-ink/20 px-6 py-3 text-sm font-medium transition-colors hover:border-accent hover:text-accent"
          >
            How to use the app
          </Link>
        </div>
      </section>

      {/* Category browser — the new navigation */}
      <section className="container-page pb-12">
        <div className="grid gap-px overflow-hidden rounded-xl border border-ink/10 bg-ink/10 sm:grid-cols-2 lg:grid-cols-4">
          {CATEGORIES.map((c) => (
            <Link
              key={c.slug}
              href={`/${c.slug}`}
              className="group bg-paper p-6 transition-colors hover:bg-ink hover:text-paper"
            >
              <p className="font-mono text-xs uppercase tracking-widest text-accent">{c.label}</p>
              <p className="mt-3 text-sm text-ink/70 group-hover:text-paper/70">{c.blurb}</p>
            </Link>
          ))}
        </div>
      </section>

      {/* Featured projects */}
      <section className="container-page pb-8">
        <div className="mb-6 flex items-baseline justify-between">
          <h2 className="text-2xl font-semibold tracking-tight">Featured projects</h2>
          <Link href="/public-art" className="font-mono text-xs uppercase tracking-widest hover:text-accent">
            View all →
          </Link>
        </div>

        {featured.length > 0 ? (
          <div className="grid grid-cols-2 gap-x-5 gap-y-10 md:grid-cols-3 lg:grid-cols-4">
            {featured.map((p) => (
              <ProjectCard key={p.id} project={p} />
            ))}
          </div>
        ) : (
          <div className="rounded-lg border border-dashed border-ink/20 px-6 py-16 text-center">
            <p className="font-mono text-sm text-ink/50">
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
