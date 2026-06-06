import { createClient } from '../../../lib/supabase/server';
import type { Page } from '../../../lib/types';
import { savePage } from '../actions';

const EDITABLE = [
  { key: 'about', label: 'About' },
  { key: 'how-to-use', label: 'How To Use' },
];

const input =
  'mt-1 w-full rounded-md border border-ink/20 bg-white px-3 py-2 text-sm focus:border-accent focus:outline-none';

export default async function AdminPagesPage({
  searchParams,
}: {
  searchParams: Promise<{ saved?: string }>;
}) {
  const { saved } = await searchParams;
  const supabase = await createClient();
  const { data } = await supabase.from('pages').select('*');
  const pages = (data as Page[]) ?? [];
  const byKey = (key: string) => pages.find((p) => p.key === key);

  return (
    <div className="max-w-3xl">
      <h1 className="text-2xl font-semibold tracking-tight">Pages</h1>
      <p className="mt-2 text-sm text-ink/60">Edit the text on your About and How To Use pages.</p>

      {saved && (
        <p className="mt-4 rounded-md bg-green-100 px-4 py-2 text-sm text-green-800">Saved.</p>
      )}

      <div className="mt-8 space-y-12">
        {EDITABLE.map(({ key, label }) => {
          const page = byKey(key);
          return (
            <form key={key} action={savePage.bind(null, key)} className="rounded-lg border border-ink/10 bg-white p-6">
              <p className="font-mono text-xs uppercase tracking-widest text-ink/50">{label} page</p>
              <div className="mt-4">
                <label className="block text-sm font-medium">Heading</label>
                <input name="title" defaultValue={page?.title ?? label} className={input} />
              </div>
              <div className="mt-4">
                <label className="block text-sm font-medium">Body</label>
                <textarea name="body" rows={8} defaultValue={page?.body ?? ''} className={input} />
              </div>
              <button className="mt-5 rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent">
                Save {label}
              </button>
            </form>
          );
        })}
      </div>
    </div>
  );
}
