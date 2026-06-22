import { createClient } from '../../../lib/supabase/server';
import type { News } from '../../../lib/types';
import { createNews, updateNews } from '../actions';
import DeleteNewsButton from '../../../components/admin/DeleteNewsButton';

const input =
  'mt-1 w-full rounded-md border border-ink/20 bg-white px-3 py-2 text-sm focus:border-accent focus:outline-none';
const labelCls = 'block text-xs font-medium text-ink/70';

export default async function AdminNewsPage({
  searchParams,
}: {
  searchParams: Promise<{ saved?: string; deleted?: string }>;
}) {
  const { saved, deleted } = await searchParams;
  const supabase = await createClient();
  const { data } = await supabase
    .from('news')
    .select('*')
    .order('published_on', { ascending: false, nullsFirst: false })
    .order('sort_order', { ascending: true });
  const news = (data as News[]) ?? [];

  return (
    <div className="max-w-3xl">
      <h1 className="text-2xl font-semibold tracking-tight">News</h1>
      <p className="mt-2 text-sm text-ink/60">
        Announce exhibitions, awards, and updates. Newest date shows first. You can use{' '}
        <strong>[link text](https://…)</strong> in the body to add links. Leave optional fields blank.
      </p>

      {saved && (
        <p className="mt-4 rounded-md bg-green-100 px-4 py-2 text-sm text-green-800">Saved.</p>
      )}
      {deleted && (
        <p className="mt-4 rounded-md bg-ink/10 px-4 py-2 text-sm text-ink/70">News item deleted.</p>
      )}

      {/* Add a news item */}
      <form action={createNews} className="mt-8 rounded-lg border border-accent/30 bg-white p-6">
        <p className="font-display text-xs uppercase tracking-widest text-accent">Add news</p>
        <div className="mt-4 grid gap-4">
          <div>
            <label className={labelCls}>Headline</label>
            <input name="title" required className={input} placeholder="e.g. New exhibition at…" />
          </div>
          <div>
            <label className={labelCls}>Body (optional)</label>
            <textarea name="body" rows={4} className={input} placeholder="Details…" />
          </div>
          <div className="grid gap-4 sm:grid-cols-3">
            <div>
              <label className={labelCls}>Link (optional)</label>
              <input name="url" type="url" className={input} placeholder="https://…" />
            </div>
            <div>
              <label className={labelCls}>Date</label>
              <input name="published_on" className={input} placeholder="YYYY-MM-DD" />
            </div>
            <div>
              <label className={labelCls}>Sort order</label>
              <input name="sort_order" type="number" defaultValue={0} className={input} />
            </div>
          </div>
        </div>
        <button className="mt-5 rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent">
          Add news
        </button>
      </form>

      {/* Existing news */}
      <div className="mt-10 space-y-6">
        {news.length === 0 ? (
          <p className="text-sm text-ink/50">No news yet — add your first item above.</p>
        ) : (
          news.map((n) => (
            <form
              key={n.id}
              action={updateNews.bind(null, n.id)}
              className="rounded-lg border border-ink/10 bg-white p-6"
            >
              <div className="grid gap-4">
                <div>
                  <label className={labelCls}>Headline</label>
                  <input name="title" required defaultValue={n.title} className={input} />
                </div>
                <div>
                  <label className={labelCls}>Body</label>
                  <textarea name="body" rows={4} defaultValue={n.body ?? ''} className={input} />
                </div>
                <div className="grid gap-4 sm:grid-cols-3">
                  <div>
                    <label className={labelCls}>Link</label>
                    <input name="url" type="url" defaultValue={n.url ?? ''} className={input} placeholder="https://…" />
                  </div>
                  <div>
                    <label className={labelCls}>Date</label>
                    <input name="published_on" defaultValue={n.published_on ?? ''} className={input} placeholder="YYYY-MM-DD" />
                  </div>
                  <div>
                    <label className={labelCls}>Sort order</label>
                    <input name="sort_order" type="number" defaultValue={n.sort_order} className={input} />
                  </div>
                </div>
              </div>
              <div className="mt-5 flex items-center gap-3">
                <button className="rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent">
                  Save
                </button>
                <DeleteNewsButton id={n.id} title={n.title} />
              </div>
            </form>
          ))
        )}
      </div>
    </div>
  );
}
