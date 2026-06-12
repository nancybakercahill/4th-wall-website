import { getTalks } from '../../../lib/queries';
import EmptyState from '../../../components/EmptyState';

export const metadata = { title: 'Talks' };

export default async function TalksPage() {
  const talks = await getTalks();
  return (
    <div className="container-page max-w-4xl py-16">
      <h1 className="text-4xl font-semibold tracking-tight sm:text-5xl">Talks</h1>
      <div className="mt-10 space-y-px overflow-hidden rounded-lg border border-ink/10 bg-ink/10">
        {talks.length === 0 && (
          <div className="bg-paper">
            <EmptyState message="No talks yet — add them from the admin." />
          </div>
        )}
        {talks.map((t) => (
          <div key={t.id} className="bg-paper p-6">
            <div className="flex flex-wrap items-baseline justify-between gap-2">
              <h2 className="text-lg font-semibold">
                {t.url ? (
                  <a href={t.url} target="_blank" rel="noopener noreferrer" className="hover:text-accent">
                    {t.title}
                  </a>
                ) : (
                  t.title
                )}
              </h2>
              {t.talk_date && (
                <span className="font-display text-xs text-ink/50">{t.talk_date}</span>
              )}
            </div>
            {t.event && <p className="mt-1 font-display text-xs uppercase tracking-widest text-ink/50">{t.event}</p>}
            {t.description && <p className="mt-3 text-sm text-ink/70">{t.description}</p>}
          </div>
        ))}
      </div>
    </div>
  );
}
