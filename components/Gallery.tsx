'use client';

import { useState, useEffect, useCallback } from 'react';

export interface GalleryItem {
  id: string;
  kind: 'image' | 'video' | 'embed';
  src: string;
  caption: string | null;
  alt: string | null;
}

// Project media grid. Images open in a simple click-to-enlarge lightbox;
// videos play inline. Deliberately minimal interactivity.
export default function Gallery({ items }: { items: GalleryItem[] }) {
  const images = items.filter((m) => m.kind === 'image');
  const [openId, setOpenId] = useState<string | null>(null);

  const openIndex = images.findIndex((m) => m.id === openId);
  const open = openIndex >= 0 ? images[openIndex] : null;

  const close = useCallback(() => setOpenId(null), []);
  const step = useCallback(
    (dir: number) => {
      if (openIndex < 0) return;
      const next = (openIndex + dir + images.length) % images.length;
      setOpenId(images[next].id);
    },
    [openIndex, images]
  );

  useEffect(() => {
    if (!open) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === 'Escape') close();
      if (e.key === 'ArrowRight') step(1);
      if (e.key === 'ArrowLeft') step(-1);
    };
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [open, close, step]);

  if (items.length === 0) return null;

  return (
    <>
      <div className="grid grid-cols-1 gap-6 sm:grid-cols-2">
        {items.map((m) => (
          <figure key={m.id} className="overflow-hidden rounded-lg bg-ink/5">
            {m.kind === 'video' ? (
              <video src={m.src} controls className="w-full" />
            ) : (
              <button
                type="button"
                onClick={() => setOpenId(m.id)}
                className="group block w-full cursor-zoom-in"
                aria-label="Enlarge image"
              >
                {/* eslint-disable-next-line @next/next/no-img-element */}
                <img
                  src={m.src}
                  alt={m.alt ?? ''}
                  className="w-full object-cover transition-opacity group-hover:opacity-90"
                />
              </button>
            )}
            {m.caption && (
              <figcaption className="px-4 py-3 font-mono text-xs text-ink/50">{m.caption}</figcaption>
            )}
          </figure>
        ))}
      </div>

      {open && (
        <div
          className="fixed inset-0 z-50 flex flex-col items-center justify-center bg-ink/90 p-4"
          onClick={close}
          role="dialog"
          aria-modal="true"
        >
          <button
            className="absolute right-4 top-4 font-mono text-xs uppercase tracking-widest text-paper/80 hover:text-accent"
            onClick={close}
          >
            Close ✕
          </button>
          {images.length > 1 && (
            <>
              <button
                className="absolute left-4 text-3xl text-paper/70 hover:text-accent"
                onClick={(e) => {
                  e.stopPropagation();
                  step(-1);
                }}
                aria-label="Previous"
              >
                ‹
              </button>
              <button
                className="absolute right-4 top-1/2 text-3xl text-paper/70 hover:text-accent"
                onClick={(e) => {
                  e.stopPropagation();
                  step(1);
                }}
                aria-label="Next"
              >
                ›
              </button>
            </>
          )}
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            src={open.src}
            alt={open.alt ?? ''}
            className="max-h-[85vh] max-w-[90vw] object-contain"
            onClick={(e) => e.stopPropagation()}
          />
          {open.caption && (
            <p className="mt-4 max-w-2xl text-center font-mono text-xs text-paper/70">{open.caption}</p>
          )}
        </div>
      )}
    </>
  );
}
