import { getSettings } from '../../../lib/queries';
import { CATEGORIES } from '../../../lib/categories';
import { saveSettings } from '../actions';

export const metadata = { title: 'Home & Hero' };

const HERO_DEFAULTS: Record<string, string> = {
  hero_tag: '[ free // augmented reality // public art ]',
  hero_headline: 'interactive digital artworks living in the physical world',
  hero_intro:
    '4th Wall is a free augmented reality app by artist Nancy Baker Cahill. Explore every project — past, present, and upcoming through 2026',
};

const input =
  'mt-1 w-full rounded-md border border-ink/20 bg-white px-3 py-2 text-sm focus:border-accent focus:outline-none';

export default async function AdminHomePage({
  searchParams,
}: {
  searchParams: Promise<{ saved?: string }>;
}) {
  const { saved } = await searchParams;
  const settings = await getSettings();
  const val = (key: string, fallback: string) => settings[key] ?? fallback;

  return (
    <div className="max-w-3xl">
      <h1 className="text-2xl font-semibold tracking-tight">Home &amp; Hero</h1>
      <p className="mt-2 text-sm text-ink/60">
        Edit the homepage hero copy and the category descriptions. Leave a field blank to restore
        its built-in default.
      </p>

      {saved && (
        <p className="mt-4 rounded-md bg-green-100 px-4 py-2 text-sm text-green-800">Saved.</p>
      )}

      <form action={saveSettings} className="mt-8 space-y-10">
        <section className="rounded-lg border border-ink/10 bg-white p-6">
          <p className="font-display text-xs uppercase tracking-widest text-ink/50">Hero</p>

          <div className="mt-4">
            <label className="block text-sm font-medium">Tag line (small, above headline)</label>
            <input name="hero_tag" defaultValue={val('hero_tag', HERO_DEFAULTS.hero_tag)} className={input} />
          </div>

          <div className="mt-4">
            <label className="block text-sm font-medium">Headline</label>
            <textarea
              name="hero_headline"
              rows={2}
              defaultValue={val('hero_headline', HERO_DEFAULTS.hero_headline)}
              className={input}
            />
            <p className="mt-1 text-xs text-ink/40">Shown in lowercase with the glitch animation.</p>
          </div>

          <div className="mt-4">
            <label className="block text-sm font-medium">Intro paragraph</label>
            <textarea
              name="hero_intro"
              rows={3}
              defaultValue={val('hero_intro', HERO_DEFAULTS.hero_intro)}
              className={input}
            />
          </div>
        </section>

        <section className="rounded-lg border border-ink/10 bg-white p-6">
          <p className="font-display text-xs uppercase tracking-widest text-ink/50">
            Category descriptions
          </p>
          <div className="mt-4 space-y-4">
            {CATEGORIES.map((c) => (
              <div key={c.value}>
                <label className="block text-sm font-medium">{c.label}</label>
                <textarea
                  name={`blurb_${c.value}`}
                  rows={2}
                  defaultValue={val(`blurb_${c.value}`, c.blurb)}
                  className={input}
                />
              </div>
            ))}
          </div>
        </section>

        <button className="rounded-md bg-ink px-6 py-2.5 text-sm font-medium text-paper hover:bg-accent">
          Save changes
        </button>
      </form>
    </div>
  );
}
