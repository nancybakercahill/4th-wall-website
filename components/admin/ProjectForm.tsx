'use client';

import { useState } from 'react';
import { CATEGORIES } from '../../lib/categories';
import type { Project } from '../../lib/types';
import ImageUpload from './ImageUpload';

interface Props {
  // Server action bound to create or update.
  action: (formData: FormData) => void;
  project?: Project;
}

const input =
  'mt-1 w-full rounded-md border border-ink/20 bg-white px-3 py-2 text-sm focus:border-accent focus:outline-none';
const labelCls = 'block text-sm font-medium';

export default function ProjectForm({ action, project }: Props) {
  const [cover, setCover] = useState<string | null>(project?.cover_image_path ?? null);

  return (
    <form action={action} className="grid max-w-3xl gap-6">
      <input type="hidden" name="cover_image_path" value={cover ?? ''} />

      <div>
        <label className={labelCls}>Title</label>
        <input name="title" required defaultValue={project?.title} className={input} />
      </div>

      <div className="grid gap-6 sm:grid-cols-2">
        <div>
          <label className={labelCls}>Slug (URL)</label>
          <input
            name="slug"
            defaultValue={project?.slug}
            placeholder="auto from title"
            className={input}
          />
        </div>
        <div>
          <label className={labelCls}>Category</label>
          <select name="category" defaultValue={project?.category ?? 'public_art'} className={input}>
            {CATEGORIES.map((c) => (
              <option key={c.value} value={c.value}>
                {c.label}
              </option>
            ))}
          </select>
        </div>
      </div>

      <div>
        <label className={labelCls}>Subtitle</label>
        <input name="subtitle" defaultValue={project?.subtitle ?? ''} className={input} />
      </div>

      <div className="grid gap-6 sm:grid-cols-3">
        <div>
          <label className={labelCls}>Year</label>
          <input name="year" type="number" defaultValue={project?.year ?? ''} className={input} />
        </div>
        <div className="sm:col-span-2">
          <label className={labelCls}>Location</label>
          <input name="location" defaultValue={project?.location ?? ''} className={input} />
        </div>
      </div>

      <div className="grid gap-6 sm:grid-cols-2">
        <div>
          <label className={labelCls}>Latitude</label>
          <input name="latitude" type="number" step="any" defaultValue={project?.latitude ?? ''} className={input} />
        </div>
        <div>
          <label className={labelCls}>Longitude</label>
          <input name="longitude" type="number" step="any" defaultValue={project?.longitude ?? ''} className={input} />
        </div>
      </div>

      <ImageUpload folder="covers" current={cover} onUploaded={setCover} label="Cover image" />

      <div>
        <label className={labelCls}>Description</label>
        <textarea name="description" rows={8} defaultValue={project?.description ?? ''} className={input} />
      </div>

      <div>
        <label className={labelCls}>Credits</label>
        <textarea name="credits" rows={3} defaultValue={project?.credits ?? ''} className={input} />
      </div>

      <div className="grid gap-6 sm:grid-cols-3">
        <div>
          <label className={labelCls}>Status</label>
          <select name="status" defaultValue={project?.status ?? 'draft'} className={input}>
            <option value="draft">Draft (hidden)</option>
            <option value="published">Published (live)</option>
          </select>
        </div>
        <div>
          <label className={labelCls}>Visibility</label>
          <select name="visibility" defaultValue={project?.visibility ?? 'private'} className={input}>
            <option value="private">Private</option>
            <option value="public">Public (archive-ready)</option>
          </select>
        </div>
        <div>
          <label className={labelCls}>Sort order</label>
          <input name="sort_order" type="number" defaultValue={project?.sort_order ?? 0} className={input} />
        </div>
      </div>

      <div className="flex gap-3 pt-2">
        <button
          type="submit"
          className="rounded-md bg-ink px-6 py-2.5 text-sm font-medium text-paper hover:bg-accent"
        >
          Save project
        </button>
      </div>
    </form>
  );
}
