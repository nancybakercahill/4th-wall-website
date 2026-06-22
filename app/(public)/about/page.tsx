import { getPage } from '../../../lib/queries';
import { renderRichText } from '../../../components/RichText';

export const metadata = { title: 'About' };

export default async function AboutPage() {
  const page = await getPage('about');

  return (
    <div className="bg-ink text-paper">
      <div className="container-page max-w-3xl py-16 sm:py-20">
        <h1 className="font-display text-4xl font-semibold tracking-tight text-paper sm:text-5xl">
          {page?.title ?? 'About'}
        </h1>
        <div className="mt-8 whitespace-pre-wrap text-lg leading-relaxed text-acid">
          {renderRichText(page?.body ?? 'Edit this page from the admin.')}
        </div>
      </div>
    </div>
  );
}
