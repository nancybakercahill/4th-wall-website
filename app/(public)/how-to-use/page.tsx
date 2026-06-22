import { getPage } from '../../../lib/queries';

export const metadata = { title: 'How To Use' };

// Split the editable page body into a main section and an optional
// "— Troubleshooting —" section, each as a list of paragraph items.
function parseBody(body: string | null): { steps: string[]; trouble: string[] } {
  if (!body) return { steps: [], trouble: [] };
  // Normalise Windows (\r\n) and lone-\r line endings so blank-line splitting works.
  const normalised = body.replace(/\r\n?/g, '\n');
  const [main, tail] = normalised.split(/—\s*Troubleshooting\s*—/i);
  const toItems = (s?: string) =>
    (s ?? '')
      .split(/\n{2,}/)
      .map((p) => p.replace(/\s+/g, ' ').trim())
      .filter(Boolean);
  return { steps: toItems(main), trouble: toItems(tail) };
}

const listClass = 'mt-8 max-w-4xl list-disc space-y-4 pl-5 marker:text-acid';
const itemClass = 'font-display text-sm uppercase tracking-[0.12em] text-acid';

export default async function HowToUsePage() {
  const page = await getPage('how-to-use');
  const { steps, trouble } = parseBody(page?.body ?? null);

  return (
    <div className="bg-ink text-paper">
      <div className="container-page py-16 sm:py-20">
        <h1 className="font-display text-4xl font-semibold tracking-tight text-paper sm:text-5xl">
          {page?.title ?? 'How To Use'}
        </h1>

        {steps.length === 0 && trouble.length === 0 ? (
          <p className="mt-10 font-display text-sm uppercase tracking-widest text-paper/40">
            Edit this page from the admin.
          </p>
        ) : (
          <>
            {steps.length > 0 && (
              <ul className={listClass}>
                {steps.map((s, i) => (
                  <li key={i}>
                    <span className={itemClass}>{s}</span>
                  </li>
                ))}
              </ul>
            )}

            {trouble.length > 0 && (
              <section className="mt-16">
                <p className="font-display text-sm font-bold uppercase tracking-[0.25em] text-paper">
                  Troubleshooting
                </p>
                <ul className={listClass}>
                  {trouble.map((s, i) => (
                    <li key={i}>
                      <span className={itemClass}>{s}</span>
                    </li>
                  ))}
                </ul>
              </section>
            )}
          </>
        )}
      </div>
    </div>
  );
}
