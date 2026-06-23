import './globals.css';
import type { Metadata } from 'next';
import { Inter, Space_Grotesk } from 'next/font/google';
import { Analytics } from '@vercel/analytics/next';
import { SpeedInsights } from '@vercel/speed-insights/next';
import {
  SITE_URL,
  SITE_NAME,
  ARTIST_NAME,
  ARTIST_SITE,
  SITE_DESCRIPTION,
  SITE_KEYWORDS,
  OG_IMAGE,
} from '../lib/site';

const inter = Inter({ subsets: ['latin'], variable: '--font-sans', display: 'swap' });
const display = Space_Grotesk({
  subsets: ['latin'],
  weight: ['400', '500', '600', '700'],
  variable: '--font-display',
  display: 'swap',
});

export const metadata: Metadata = {
  metadataBase: new URL(SITE_URL),
  title: {
    // Name + AR lead, by design — this is what we want to rank for.
    default: `4th Wall — AR Public Art by Nancy Baker Cahill`,
    template: `%s — 4th Wall`,
  },
  description: SITE_DESCRIPTION,
  keywords: SITE_KEYWORDS,
  applicationName: SITE_NAME,
  authors: [{ name: ARTIST_NAME, url: ARTIST_SITE }],
  creator: ARTIST_NAME,
  publisher: ARTIST_NAME,
  alternates: { canonical: '/' },
  openGraph: {
    type: 'website',
    siteName: SITE_NAME,
    title: `AR Public Art by Nancy Baker Cahill`,
    description: SITE_DESCRIPTION,
    url: SITE_URL,
    images: [
      {
        url: OG_IMAGE,
        width: 1200,
        height: 630,
        alt: `4th Wall — augmented reality public art by ${ARTIST_NAME}`,
      },
    ],
  },
  twitter: {
    card: 'summary_large_image',
    title: `AR Public Art by Nancy Baker Cahill`,
    description: SITE_DESCRIPTION,
    images: [OG_IMAGE],
  },
  robots: {
    index: true,
    follow: true,
    googleBot: { index: true, follow: true, 'max-image-preview': 'large' },
  },
  category: 'art',
};

// Structured data: tells search engines WHO Nancy is (an AR artist) and WHAT 4th Wall is.
// This is the piece that powers name + "AR artist" discoverability and knowledge-panel eligibility.
const jsonLd = {
  '@context': 'https://schema.org',
  '@graph': [
    {
      '@type': 'WebSite',
      '@id': `${SITE_URL}/#website`,
      url: SITE_URL,
      name: SITE_NAME,
      description: SITE_DESCRIPTION,
      inLanguage: 'en',
      publisher: { '@id': `${SITE_URL}/#artist` },
    },
    {
      '@type': 'Person',
      '@id': `${SITE_URL}/#artist`,
      name: ARTIST_NAME,
      url: ARTIST_SITE,
      jobTitle: ['Augmented Reality Artist', 'New Media Artist'],
      description:
        'Nancy Baker Cahill is an American new media and augmented reality artist creating museum-quality AR artworks and participatory public art. She is the founder and creator of the 4th Wall app.',
      knowsAbout: [
        'Augmented Reality Art',
        'Museum-quality AR artworks',
        'Participatory Public Art',
        'Public Art',
        'New Media Art',
        'Immersive Art',
        'Experiential Art',
        'Virtual Reality',
        'XR',
        'Digital Art',
      ],
      // Authoritative entity links — verified real. These tie this site to the
      // canonical "Nancy Baker Cahill" entity across the web (Wikidata/Wikipedia/Whitney),
      // which is what powers a Google knowledge panel.
      sameAs: [
        ARTIST_SITE,
        'https://www.wikidata.org/wiki/Q75452977',
        'https://en.wikipedia.org/wiki/Nancy_Baker_Cahill',
        'https://whitney.org/artists/21063',
        'https://www.instagram.com/nancybakercahill/',
        'https://www.linkedin.com/in/nancy-baker-cahill-4773722b/',
      ],
    },
    {
      '@type': 'MobileApplication',
      '@id': `${SITE_URL}/#app`,
      name: '4th Wall',
      applicationCategory: 'LifestyleApplication',
      operatingSystem: 'iOS, Android',
      offers: { '@type': 'Offer', price: '0', priceCurrency: 'USD' },
      description:
        'Free augmented reality app presenting museum-quality AR artworks and public art in physical space.',
      creator: { '@id': `${SITE_URL}/#artist` },
    },
  ],
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en" className={`${inter.variable} ${display.variable}`}>
      <body>
        {children}
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
        />
        <Analytics />
        <SpeedInsights />
      </body>
    </html>
  );
}
