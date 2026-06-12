import { getPress } from '../../../lib/queries';
import EmptyState from '../../../components/EmptyState';

export const metadata = { title: 'Press' };

export default async function PressPage() {
  const press = await getPress();
  return (
    <div className="container-page max-w-4xl py-16">
      <h1 className="text-4xl font-semibold tracking-tight sm:text-5xl">Press</h1>
      <div className="mt-10">
        {press.length === 0 ? (
          <EmptyState message="No press items yet — add them from the admin." />
        ) : (
          <ul className="divide-y divide-ink/10 border-y border-ink/10">
            {press.map((p) => (
              <li key={p.id} className="py-4">
                <a
                  href={p.url}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex flex-wrap items-baseline justify-between gap-2 hover:text-accent"
                >
                  <span className="text-lg font-medium">{p.title}</span>
                  <span className="font-display text-xs uppercase tracking-widest text-ink/50">
                    {p.outlet}
                    {p.published_on ? ` · ${p.published_on}` : ''}
                  </span>
                </a>
              </li>
            ))}
          </ul>
        )}
      </div>
    </div>
  );
}
