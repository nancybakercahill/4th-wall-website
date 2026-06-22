import { createClient } from '../../../lib/supabase/server';
import type { Press } from '../../../lib/types';
import { createPress, updatePress } from '../actions';
import DeletePressButton from '../../../components/admin/DeletePressButton';

const input =
  'mt-1 w-full rounded-md border border-ink/20 bg-white px-3 py-2 text-sm focus:border-accent focus:outline-none';
const labelCls = 'block text-xs font-medium text-ink/70';

export default async function AdminPressPage({
  searchParams,
}: {
  searchParams: Promise<{ saved?: string; deleted?: string }>;
}) {
  const { saved, deleted } = await searchParams;
  const supabase = await createClient();
  const { data } = await supabase
    .from('press')
    .select('*')
    .order('published_on', { ascending: false, nullsFirst: false });
  const press = (data as Press[]) ?? [];

  return (
    <div className="max-w-3xl">
      <h1 className="text-2xl font-semibold tracking-tight">Press</h1>
      <p className="mt-2 text-sm text-ink/60">
        Add, edit, or remove press. Newest date shows first — set the <strong>Date</strong> so each
        item lands in the right place. Link is required.
      </p>

      {saved && (
        <p className="mt-4 rounded-md bg-green-100 px-4 py-2 text-sm text-green-800">Saved.</p>
      )}
      {deleted && (
        <p className="mt-4 rounded-md bg-ink/10 px-4 py-2 text-sm text-ink/70">Press item deleted.</p>
      )}

      {/* Add a press item */}
      <form action={createPress} className="mt-8 rounded-lg border border-accent/30 bg-white p-6">
        <p className="font-display text-xs uppercase tracking-widest text-accent">Add press</p>
        <div className="mt-4 grid gap-4">
          <div>
            <label className={labelCls}>Title / headline</label>
            <input name="title" required className={input} placeholder="Article title" />
          </div>
          <div>
            <label className={labelCls}>Link (URL)</label>
            <input name="url" type="url" required className={input} placeholder="https://…" />
          </div>
          <div className="grid gap-4 sm:grid-cols-2">
            <div>
              <label className={labelCls}>Outlet</label>
              <input name="outlet" className={input} placeholder="e.g. The Art Newspaper" />
            </div>
            <div>
              <label className={labelCls}>Date</label>
              <input name="published_on" className={input} placeholder="YYYY-MM-DD" />
            </div>
          </div>
        </div>
        <button className="mt-5 rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent">
          Add press
        </button>
      </form>

      {/* Existing press */}
      <div className="mt-10 space-y-6">
        {press.length === 0 ? (
          <p className="text-sm text-ink/50">No press yet — add your first item above.</p>
        ) : (
          press.map((p) => (
            <form
              key={p.id}
              action={updatePress.bind(null, p.id)}
              className="rounded-lg border border-ink/10 bg-white p-6"
            >
              <div className="grid gap-4">
                <div>
                  <label className={labelCls}>Title</label>
                  <input name="title" required defaultValue={p.title} className={input} />
                </div>
                <div>
                  <label className={labelCls}>Link (URL)</label>
                  <input name="url" type="url" required defaultValue={p.url} className={input} />
                </div>
                <div className="grid gap-4 sm:grid-cols-2">
                  <div>
                    <label className={labelCls}>Outlet</label>
                    <input name="outlet" defaultValue={p.outlet ?? ''} className={input} />
                  </div>
                  <div>
                    <label className={labelCls}>Date</label>
                    <input name="published_on" defaultValue={p.published_on ?? ''} className={input} placeholder="YYYY-MM-DD" />
                  </div>
                </div>
              </div>
              <div className="mt-5 flex items-center gap-3">
                <button className="rounded-md bg-ink px-5 py-2.5 text-sm font-medium text-paper hover:bg-accent">
                  Save
                </button>
                <DeletePressButton id={p.id} title={p.title} />
              </div>
            </form>
          ))
        )}
      </div>
    </div>
  );
}
