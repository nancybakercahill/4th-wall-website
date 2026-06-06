'use client';

import { useRouter } from 'next/navigation';
import { useState, useTransition } from 'react';
import type { ProjectMedia } from '../../lib/types';
import { mediaUrl } from '../../lib/media';
import { addMedia, deleteMedia } from '../../app/admin/actions';
import ImageUpload from './ImageUpload';

export default function MediaManager({
  projectId,
  media,
}: {
  projectId: string;
  media: ProjectMedia[];
}) {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const [busy, setBusy] = useState(false);

  async function handleUploaded(path: string) {
    setBusy(true);
    await addMedia(projectId, { storage_path: path, kind: 'image' });
    setBusy(false);
    router.refresh();
  }

  function handleDelete(id: string) {
    startTransition(async () => {
      await deleteMedia(id, projectId);
      router.refresh();
    });
  }

  const images = media.filter((m) => m.kind === 'image');

  return (
    <div>
      <h2 className="text-lg font-semibold">Gallery</h2>
      <p className="mt-1 text-sm text-ink/60">
        Add as many images as you like. {busy ? 'Saving…' : ''}
      </p>

      <div className="mt-4 max-w-md">
        <ImageUpload folder={projectId} onUploaded={handleUploaded} label="Add gallery image" />
      </div>

      {images.length > 0 && (
        <div className="mt-6 grid grid-cols-2 gap-4 sm:grid-cols-3">
          {images.map((m) => (
            <div key={m.id} className="group relative overflow-hidden rounded-lg border border-ink/10 bg-white">
              {/* eslint-disable-next-line @next/next/no-img-element */}
              <img
                src={mediaUrl(m.storage_path) ?? m.url ?? ''}
                alt={m.alt_text ?? ''}
                className="aspect-square w-full object-cover"
              />
              <button
                onClick={() => handleDelete(m.id)}
                disabled={isPending}
                className="absolute right-2 top-2 rounded-md bg-white/90 px-2 py-1 text-xs font-medium text-accent opacity-0 shadow transition-opacity group-hover:opacity-100 disabled:opacity-50"
              >
                Delete
              </button>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
