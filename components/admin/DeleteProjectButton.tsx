'use client';

import { useTransition } from 'react';
import { deleteProject } from '../../app/admin/actions';

export default function DeleteProjectButton({ id, title }: { id: string; title: string }) {
  const [isPending, startTransition] = useTransition();

  return (
    <button
      onClick={() => {
        if (confirm(`Delete “${title}”? This cannot be undone.`)) {
          startTransition(() => deleteProject(id));
        }
      }}
      disabled={isPending}
      className="rounded-md border border-accent/40 px-4 py-2 text-sm font-medium text-accent hover:bg-accent hover:text-white disabled:opacity-50"
    >
      {isPending ? 'Deleting…' : 'Delete project'}
    </button>
  );
}
