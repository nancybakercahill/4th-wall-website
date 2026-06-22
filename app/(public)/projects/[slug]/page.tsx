import Link from 'next/link';
import { notFound } from 'next/navigation';
import type { Metadata } from 'next';
import { getProjectBySlug } from '../../../../lib/queries';
import { categoryByValue } from '../../../../lib/categories';
import { mediaUrl } from '../../../../lib/media';
import { renderRichText, LINK_ON_LIGHT } from '../../../../components/RichText';
import Gallery, { type GalleryItem } from '../../../../components/Gallery';

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}): Promise<Metadata> {
  const { slug } = await params;
  const data = await getProjectBySlug(slug);
  if (!data) return { title: 'Project not found' };
  return {
    title: data.project.title,
    description: data.project.subtitle ?? undefined,
  };
}

export default async function ProjectPage({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  const data = await getProjectBySlug(slug);
  if (!data) notFound();

  const { project, media, press } = data;
  const cat = categoryByValue(project.category);
  const cover = mediaUrl(project.cover_image_path);

  const galleryItems: GalleryItem[] = media
    .filter((m) => m.kind === 'image' || m.kind === 'video')
    .map((m) => ({
      id: m.id,
      kind: m.kind,
      src: mediaUrl(m.storage_path) ?? m.url ?? '',
      caption: m.caption,
      alt: m.alt_text ?? project.title,
    }))
    .filter((m) => m.src);

  return (
    <article className="container-page py-12">
      <Link
        href={cat ? `/${cat.slug}` : '/'}
        className="font-display text-xs uppercase tracking-widest text-ink/50 hover:text-accent"
      >
        ← {cat?.label ?? 'Back'}
      </Link>

      <header className="mt-6 max-w-4xl">
        <h1 className="text-4xl font-semibold tracking-tight sm:text-6xl">{project.title}</h1>
        {project.subtitle && (
          <p className="mt-4 text-xl text-ink/70">{project.subtitle}</p>
        )}
        <div className="mt-6 flex flex-wrap gap-x-6 gap-y-2 font-display text-xs uppercase tracking-widest text-ink/50">
          {project.year && <span>{project.year}</span>}
          {project.location && <span>{project.location}</span>}
          {cat && <span>{cat.label}</span>}
        </div>
      </header>

      {cover && (
        <div className="mt-10 overflow-hidden rounded-xl bg-ink/5">
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img src={cover} alt={project.title} className="w-full object-cover" />
        </div>
      )}

      <div className="mt-12 grid gap-12 lg:grid-cols-[2fr_1fr]">
        <div className="space-y-6">
          {project.description ? (
            <div className="whitespace-pre-wrap text-lg leading-relaxed text-ink/85">
              {renderRichText(project.description, LINK_ON_LIGHT)}
            </div>
          ) : (
            <p className="font-display text-sm text-ink/40">Description coming soon.</p>
          )}
        </div>

        <aside className="space-y-8">
          {project.credits && (
            <div>
              <p className="eyebrow">Credits</p>
              <p className="mt-3 whitespace-pre-wrap text-sm text-ink/70">{renderRichText(project.credits, LINK_ON_LIGHT)}</p>
            </div>
          )}
          {press.length > 0 && (
            <div>
              <p className="eyebrow">Press</p>
              <ul className="mt-3 space-y-2 text-sm">
                {press.map((p) => (
                  <li key={p.id}>
                    <a href={p.url} target="_blank" rel="noopener noreferrer" className="hover:text-accent">
                      {p.title}
                      {p.outlet ? <span className="text-ink/50"> — {p.outlet}</span> : null}
                    </a>
                  </li>
                ))}
              </ul>
            </div>
          )}
        </aside>
      </div>

      {/* Media gallery — images open in a lightbox, videos play inline */}
      {galleryItems.length > 0 && (
        <section className="mt-16">
          <p className="eyebrow mb-5">Gallery</p>
          <Gallery items={galleryItems} />
        </section>
      )}
    </article>
  );
}
