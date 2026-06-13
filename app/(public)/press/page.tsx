import { getPress } from '../../../lib/queries';

export const metadata = { title: 'Press' };

const MONTHS = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

// "2026-02-01" → "Feb 2026" (no timezone parsing, avoids off-by-one).
function formatDate(d: string | null): string | null {
  if (!d) return null;
  const m = d.match(/^(\d{4})-(\d{2})/);
  if (!m) return null;
  const month = MONTHS[parseInt(m[2], 10) - 1];
  return month ? `${month} ${m[1]}` : m[1];
}

export default async function PressPage() {
  const press = await getPress();

  return (
    <div className="bg-ink text-paper">
      <div className="container-page py-16 sm:py-20">
        <h1 className="font-display text-4xl font-semibold tracking-tight text-paper sm:text-5xl">
          Press
        </h1>

        {press.length === 0 ? (
          <p className="mt-10 font-display text-sm uppercase tracking-widest text-paper/40">
            No press items yet.
          </p>
        ) : (
          <ul className="mt-10 max-w-4xl list-disc space-y-4 pl-5 marker:text-acid">
            {press.map((p) => {
              const date = formatDate(p.published_on);
              return (
                <li key={p.id}>
                  <a
                    href={p.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="font-display text-sm uppercase tracking-[0.12em] text-acid transition-colors hover:text-paper"
                  >
                    {p.title}
                    {(p.outlet || date) && (
                      <span className="text-acid/50">
                        {' — '}
                        {[p.outlet, date].filter(Boolean).join(', ')}
                      </span>
                    )}
                  </a>
                </li>
              );
            })}
          </ul>
        )}
      </div>
    </div>
  );
}
