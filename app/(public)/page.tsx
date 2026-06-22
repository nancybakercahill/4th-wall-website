import Link from 'next/link';
import { getPublishedProjects, getSettings, isSupabaseConfigured } from '../../lib/queries';
import { CATEGORIES } from '../../lib/categories';
import ProjectCard from '../../components/ProjectCard';
import { renderRichText } from '../../components/RichText';

export default async function HomePage() {
  const [projects, settings] = await Promise.all([getPublishedProjects(), getSettings()]);
  const featured = projects.slice(0, 8);

  // Editable copy (admin → Home), falling back to built-in defaults.
  const heroTag = settings.hero_tag || '[ free // augmented reality // public art ]';
  const heroHeadline =
    settings.hero_headline || 'interactive digital artworks living in the physical world';
  const heroIntro =
    settings.hero_intro ||
    '4th Wall is a free augmented reality app by artist Nancy Baker Cahill. Explore every project — past, present, and upcoming through 2026';

  return (
    <>
      {/* Hero — cyberpunk magenta block with CENTO artwork behind the type */}
      <section className="relative overflow-hidden bg-pink text-ink">
        {/* CENTO scene — full colour, zoomed + nudged right (no cutout needed) */}
        {/* eslint-disable-next-line @next/next/no-img-element */}
        <img
          src="/brand/cento-scene.jpg"
          alt=""
          aria-hidden
          style={{ transform: 'scale(1.2) translateX(6%)' }}
          className="pointer-events-none absolute inset-0 h-full w-full select-none object-cover"
        />
        {/* light magenta tint — lower-intensity duotone */}
        <div className="pointer-events-none absolute inset-0 bg-pink/35 mix-blend-multiply" aria-hidden />
        {/* legibility scrim: solid magenta on the left, clearing toward the creature */}
        <div
          className="pointer-events-none absolute inset-0 bg-gradient-to-r from-pink via-pink/45 to-transparent"
          aria-hidden
        />
        <div className="scanlines pointer-events-none absolute inset-0" aria-hidden />
        {/* light-flare sweep */}
        <div className="pointer-events-none absolute inset-0 overflow-hidden" aria-hidden>
          <div className="flare absolute inset-y-0 left-0 w-1/3 bg-gradient-to-r from-transparent via-white/40 to-transparent" />
        </div>
        <div className="container-page relative pt-16 pb-16 sm:pt-24 sm:pb-24">
          <p className="tag text-ink text-sm font-bold tracking-[0.25em] sm:text-base">{heroTag}</p>
          <h1 className="glitch glitch-anim mt-6 max-w-5xl font-display text-5xl font-semibold lowercase leading-[0.95] tracking-tight sm:text-7xl lg:text-[5.5rem]">
            {heroHeadline}
          </h1>
          <p className="mt-8 max-w-2xl text-xl font-medium text-white sm:text-2xl">
            {renderRichText(heroIntro)}
          </p>
          <div className="mt-9 flex flex-wrap gap-3">
            <Link
              href="/public-art"
              className="border border-ink bg-ink px-7 py-3 text-sm font-medium uppercase tracking-wider text-neon transition-colors hover:bg-neon hover:text-ink"
            >
              ▶ Explore projects
            </Link>
            <Link
              href="/how-to-use"
              className="border border-ink px-7 py-3 text-sm font-medium uppercase tracking-wider transition-colors hover:bg-ink hover:text-neon"
            >
              How to use the app
            </Link>
          </div>
        </div>
        {/* glowing neon-yellow line */}
        <div className="neon-line h-2.5 w-full" aria-hidden />
      </section>

      {/* Category browser */}
      <section className="container-page py-14">
        <div className="grid grid-cols-1 border-l border-t border-ink sm:grid-cols-2 lg:grid-cols-5">
          {CATEGORIES.map((c) => (
            <Link
              key={c.slug}
              href={`/${c.slug}`}
              className="group border-b border-r border-ink p-7 transition-colors hover:bg-neon hover:text-ink"
            >
              <p className="font-display text-xs uppercase tracking-[0.18em]">{c.label}</p>
              <p className="mt-4 text-sm text-ink/65 group-hover:text-ink/80">
                {settings['blurb_' + c.value] || c.blurb}
              </p>
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
