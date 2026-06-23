import type { MetadataRoute } from 'next';
import { SITE_URL } from '../lib/site';

// Generated at /robots.txt — lets crawlers index everything except the private admin.
export default function robots(): MetadataRoute.Robots {
  return {
    rules: {
      userAgent: '*',
      allow: '/',
      disallow: ['/admin', '/admin/'],
    },
    sitemap: `${SITE_URL}/sitemap.xml`,
    host: SITE_URL,
  };
}
