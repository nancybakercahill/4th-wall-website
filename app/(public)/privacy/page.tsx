import type { Metadata } from 'next';
import { getPage } from '../../../lib/queries';
import { renderRichText } from '../../../components/RichText';

export const metadata: Metadata = {
  title: 'Terms of Use and Privacy Policy',
  description:
    'Terms of use and privacy statement for the 4th Wall augmented reality mobile app by Nancy Baker Cahill.',
  alternates: { canonical: '/privacy' },
};

export default async function PrivacyPage() {
  const page = await getPage('privacy');

  return (
    <div className="bg-ink text-paper">
      <div className="container-page max-w-3xl py-16 sm:py-20">
        <h1 className="font-display text-4xl font-semibold tracking-tight text-paper sm:text-5xl">
          {page?.title ?? 'Terms of Use and Privacy Policy'}
        </h1>
        <div className="mt-8 whitespace-pre-wrap text-lg leading-relaxed text-acid">
          {renderRichText(page?.body ?? 'Edit this page from the admin.')}
        </div>
      </div>
    </div>
  );
}
