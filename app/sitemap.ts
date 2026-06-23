import type { MetadataRoute } from 'next';
import { SITE_URL } from '../lib/site';
import { CATEGORIES } from '../lib/categories';
import { getPublishedProjects } from '../lib/queries';

// Generated at /sitemap.xml — lists every public URL so search engines can find them all.
export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const now = new Date();

  const staticPaths = [
    '',
    '/about',
    '/how-to-use',
    '/talks',
    '/press',
    '/news',
    ...CATEGORIES.map((c) => `/${c.slug}`),
  ];

  const staticEntries: MetadataRoute.Sitemap = staticPaths.map((path) => ({
    url: `${SITE_URL}${path}`,
    lastModified: now,
    changeFrequency: path === '' ? 'weekly' : 'monthly',
    priority: path === '' ? 1 : 0.7,
  }));

  let projectEntries: MetadataRoute.Sitemap = [];
  try {
    const projects = await getPublishedProjects();
    projectEntries = projects.map((p) => ({
      url: `${SITE_URL}/projects/${p.slug}`,
      lastModified: p.updated_at ? new Date(p.updated_at) : now,
      changeFrequency: 'monthly',
      priority: 0.8,
    }));
  } catch {
    // If the DB is unreachable at build time, still ship the static sitemap.
  }

  return [...staticEntries, ...projectEntries];
}
