import { createClient } from '../../../lib/supabase/server';
import type { Talk } from '../../../lib/types';
import { createTalk, updateTalk } from '../actions';
import DeleteTalkButton from '../../../components/admin/DeleteTalkButton';

const input =
  'mt-1 w-full rounded-md border border-ink/20 bg-white px-3 py-2 text-sm focus:border-accent focus:outline-none';
const labelCls = 'block text-xs font-medium text-ink/70';

export default async function AdminTalksPage({
  searchParams,
}: {
  searchParams: Promise<{ saved?: string; deleted?: string }>;
}) {
  const { saved, deleted } = await searchParams;
  const supabase = await createClient();
  const { data } = await supabase
    .from('talks')
    .select('*')
    .order('sort_order', { ascending: true })
    .order('title', { ascending: true });
  const talks = (data as Talk[]) ?? [];

  return (
    <div className="max-w-3xl">
      <h1 className="text-2xl font-semibold tracking-tight">Talks</h1>
      <p className="mt-2 text-sm text-ink/60">
        Add, edit, reorder, or remove your talks &amp; videos. <strong>Lower sort number = higher up
        the page.</strong> Leave fields blank if they don’t apply.
      </p>

      {saved && (
        <p className="mt-4 rounded-md bg-green-100 px-4 py-2 text-sm text-green-800">Saved.</p>
      )}
      {deleted && (
        <p className="mt-4 rounded-md bg-ink/10 px-4 py-2 text-sm text-ink/70">Talk deleted.</p>
      )}

      {/* Add a new talk */}
      <form action={createTalk} className="mt-8 rounded-lg border border-accent/30 bg-white p-6">
        <p className="font-display text-xs uppercase tracking-widest text-accent">Add a talk</p>
        <div className="mt-4 grid gap-4">
          <div>
            <label className={labelCls}>Title</label>
            <input name="title" required className={input} placeholder="Talk or video title" />
          </div>
          <div>
            <label className={labelCls}>Link (URL)</label>
            <input name="url" type="url" className={input} placeholder="https://…" />
          </div>
          <div className="grid gap-4 sm:grid-cols-3">
            <div>
              <label className={labelCls}>Event (optional)</label>
              <input name="event" className={input} placeholder="e.g. Whitney Museum" />
            </div>
            <div>
              <label className={labelCls}>Date (optional)</label>
              <input name="talk_date" className={input} placeholder="YYYY-MM-DD" />
            </div>
            <div>
              <label className={labelCls}>Sort order</label>
              <input name="sort_order" type="number" defaultValue={(talks.at(-1)?.sort_order ?? 0) + 10} className={input} />
            </div>
          </div>
        </div>
        <button className="mt-5 rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent">
          Add talk
        </button>
      </form>

      {/* Existing talks */}
      <div className="mt-10 space-y-6">
        {talks.length === 0 ? (
          <p className="text-sm text-ink/50">No talks yet — add your first one above.</p>
        ) : (
          talks.map((t) => (
            <form
              key={t.id}
              action={updateTalk.bind(null, t.id)}
              className="rounded-lg border border-ink/10 bg-white p-6"
            >
              <div className="grid gap-4">
                <div>
                  <label className={labelCls}>Title</label>
                  <input name="title" required defaultValue={t.title} className={input} />
                </div>
                <div>
                  <label className={labelCls}>Link (URL)</label>
                  <input name="url" type="url" defaultValue={t.url ?? ''} className={input} placeholder="https://…" />
                </div>
                <div className="grid gap-4 sm:grid-cols-3">
                  <div>
                    <label className={labelCls}>Event</label>
                    <input name="event" defaultValue={t.event ?? ''} className={input} />
                  </div>
                  <div>
                    <label className={labelCls}>Date</label>
                    <input name="talk_date" defaultValue={t.talk_date ?? ''} className={input} placeholder="YYYY-MM-DD" />
                  </div>
                  <div>
                    <label className={labelCls}>Sort order</label>
                    <input name="sort_order" type="number" defaultValue={t.sort_order} className={input} />
                  </div>
                </div>
                <input type="hidden" name="description" value={t.description ?? ''} />
              </div>
              <div className="mt-5 flex items-center gap-3">
                <button className="rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent">
                  Save
                </button>
                <DeleteTalkButton id={t.id} title={t.title} />
              </div>
            </form>
          ))
        )}
      </div>
    </div>
  );
}
