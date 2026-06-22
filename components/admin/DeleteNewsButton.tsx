'use client';

import { useTransition } from 'react';
import { deleteNews } from '../../app/admin/actions';

export default function DeleteNewsButton({ id, title }: { id: string; title: string }) {
  const [isPending, startTransition] = useTransition();

  return (
    <button
      type="button"
      onClick={() => {
        if (confirm(`Delete this news item?\n\n“${title}”\n\nThis cannot be undone.`)) {
          startTransition(() => deleteNews(id));
        }
      }}
      disabled={isPending}
      className="rounded-md border border-accent/40 px-4 py-2 text-sm font-medium text-accent hover:bg-accent hover:text-white disabled:opacity-50"
    >
      {isPending ? 'Deleting…' : 'Delete'}
    </button>
  );
}
