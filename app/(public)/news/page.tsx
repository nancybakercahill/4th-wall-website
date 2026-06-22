import { getNews } from '../../../lib/queries';
import { renderRichText } from '../../../components/RichText';

export const metadata = { title: 'News' };

const MONTHS = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

function formatDate(d: string | null): string | null {
  if (!d) return null;
  const m = d.match(/^(\d{4})-(\d{2})(?:-(\d{2}))?/);
  if (!m) return null;
  const month = MONTHS[parseInt(m[2], 10) - 1];
  const day = m[3] ? ` ${parseInt(m[3], 10)}` : '';
  return month ? `${month}${day}, ${m[1]}` : m[1];
}

export default async function NewsPage() {
  const news = await getNews();

  return (
    <div className="bg-ink text-paper">
      <div className="container-page py-16 sm:py-20">
        <h1 className="font-display text-4xl font-semibold tracking-tight text-paper sm:text-5xl">
          News
        </h1>

        {news.length === 0 ? (
          <p className="mt-10 font-display text-sm uppercase tracking-widest text-paper/40">
            No news yet.
          </p>
        ) : (
          <div className="mt-10 max-w-3xl divide-y divide-paper/15 border-y border-paper/15">
            {news.map((n) => {
              const date = formatDate(n.published_on);
              return (
                <article key={n.id} className="py-8">
                  {date && (
                    <p className="font-display text-xs font-medium uppercase tracking-[0.2em] text-acid">
                      {date}
                    </p>
                  )}
                  <h2 className="mt-2 font-display text-2xl font-semibold leading-tight">
                    {n.url ? (
                      <a
                        href={n.url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="transition-colors hover:text-acid"
                      >
                        {n.title}
                      </a>
                    ) : (
                      n.title
                    )}
                  </h2>
                  {n.body && (
                    <div className="mt-3 whitespace-pre-wrap leading-relaxed text-paper/75">
                      {renderRichText(n.body)}
                    </div>
                  )}
                  {n.url && (
                    <a
                      href={n.url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="mt-4 inline-block font-display text-xs uppercase tracking-[0.18em] text-acid hover:text-paper"
                    >
                      Read more →
                    </a>
                  )}
                </article>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
