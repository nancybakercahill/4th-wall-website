import { getTalks } from '../../../lib/queries';

export const metadata = { title: 'Talks' };

const MONTHS = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

function formatDate(d: string | null): string | null {
  if (!d) return null;
  const m = d.match(/^(\d{4})-(\d{2})/);
  if (!m) return null;
  const month = MONTHS[parseInt(m[2], 10) - 1];
  return month ? `${month} ${m[1]}` : m[1];
}

export default async function TalksPage() {
  const talks = await getTalks();

  return (
    <div className="bg-ink text-paper">
      <div className="container-page py-16 sm:py-20">
        <h1 className="font-display text-4xl font-semibold tracking-tight text-paper sm:text-5xl">
          Talks
        </h1>

        {talks.length === 0 ? (
          <p className="mt-10 font-display text-sm uppercase tracking-widest text-paper/40">
            No talks yet.
          </p>
        ) : (
          <ul className="mt-10 max-w-4xl list-disc space-y-4 pl-5 marker:text-acid">
            {talks.map((t) => {
              const date = formatDate(t.talk_date);
              const meta = [t.event, date].filter(Boolean).join(', ');
              const inner = (
                <>
                  {t.title}
                  {meta && <span className="text-acid/50">{' — '}{meta}</span>}
                </>
              );
              return (
                <li key={t.id}>
                  {t.url ? (
                    <a
                      href={t.url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="font-display text-sm uppercase tracking-[0.12em] text-acid transition-colors hover:text-paper"
                    >
                      {inner}
                    </a>
                  ) : (
                    <span className="font-display text-sm uppercase tracking-[0.12em] text-acid">
                      {inner}
                    </span>
                  )}
                </li>
              );
            })}
          </ul>
        )}
      </div>
    </div>
  );
}
