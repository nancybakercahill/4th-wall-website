'use client';

import { useState, useCallback } from 'react';
import { createClient } from '../../lib/supabase/client';
import { mediaUrl } from '../../lib/media';
import type { MediaKind } from '../../lib/types';

interface Props {
  // Folder prefix inside the `media` bucket, e.g. "covers" or a project id.
  folder: string;
  // Called with the storage path (and detected kind) after a successful upload.
  onUploaded: (path: string, kind: MediaKind) => void;
  // Optional current image path to preview.
  current?: string | null;
  label?: string;
  // What file types to accept. Default: images only. Pass 'image/*,video/*' for galleries.
  accept?: string;
}

export default function ImageUpload({
  folder,
  onUploaded,
  current,
  label = 'Image',
  accept = 'image/*',
}: Props) {
  const [preview, setPreview] = useState<string | null>(mediaUrl(current));
  const [uploading, setUploading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [dragOver, setDragOver] = useState(false);

  const allowsVideo = accept.includes('video');

  const upload = useCallback(
    async (file: File) => {
      setUploading(true);
      setError(null);
      try {
        const supabase = createClient();
        const ext = file.name.split('.').pop() || 'jpg';
        const path = `${folder}/${crypto.randomUUID()}.${ext}`;
        const { error } = await supabase.storage
          .from('media')
          .upload(path, file, { cacheControl: '3600', upsert: false });
        if (error) throw error;
        const kind: MediaKind = file.type.startsWith('video') ? 'video' : 'image';
        // Only images get an inline preview here; videos show up in the list after refresh.
        if (kind === 'image') setPreview(mediaUrl(path));
        onUploaded(path, kind);
      } catch (e) {
        setError(e instanceof Error ? e.message : 'Upload failed');
      } finally {
        setUploading(false);
      }
    },
    [folder, onUploaded]
  );

  return (
    <div>
      <label className="block text-sm font-medium">{label}</label>
      <div
        onDragOver={(e) => {
          e.preventDefault();
          setDragOver(true);
        }}
        onDragLeave={() => setDragOver(false)}
        onDrop={(e) => {
          e.preventDefault();
          setDragOver(false);
          const file = e.dataTransfer.files?.[0];
          if (file) upload(file);
        }}
        className={`mt-1 flex flex-col items-center justify-center rounded-lg border-2 border-dashed px-4 py-6 text-center transition-colors ${
          dragOver ? 'border-accent bg-accent/5' : 'border-ink/20'
        }`}
      >
        {preview && (
          // eslint-disable-next-line @next/next/no-img-element
          <img src={preview} alt="" className="mb-3 max-h-40 rounded object-contain" />
        )}
        <p className="text-sm text-ink/60">
          {uploading
            ? 'Uploading…'
            : `Drag ${allowsVideo ? 'an image or video' : 'an image'} here, or`}
        </p>
        <label className="mt-2 cursor-pointer rounded-md border border-ink/20 px-3 py-1.5 text-xs font-medium hover:border-accent hover:text-accent">
          Choose file
          <input
            type="file"
            accept={accept}
            className="hidden"
            onChange={(e) => {
              const file = e.target.files?.[0];
              if (file) upload(file);
            }}
          />
        </label>
        {error && <p className="mt-2 text-xs text-accent">{error}</p>}
      </div>
    </div>
  );
}
