import { getPage } from '../../../lib/queries';

export const metadata = { title: 'How To Use' };

export default async function HowToUsePage() {
  const page = await getPage('how-to-use');
  return (
    <div className="container-page max-w-3xl py-16">
      <h1 className="text-4xl font-semibold tracking-tight sm:text-5xl">
        {page?.title ?? 'How To Use'}
      </h1>
      <div className="mt-8 whitespace-pre-wrap text-lg leading-relaxed text-ink/80">
        {page?.body ?? 'Edit this page from the admin.'}
      </div>
    </div>
  );
}
