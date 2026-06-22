import type { Category } from './types';

// Single source of truth for category metadata: labels, URL slugs, and ordering.
// Used by both the public nav/pages and the admin forms.
export interface CategoryMeta {
  value: Category;
  label: string;
  slug: string;
  blurb: string;
}

export const CATEGORIES: CategoryMeta[] = [
  {
    value: 'participatory_public_art',
    label: 'Participatory Public Art',
    slug: 'participatory-public-art',
    blurb: 'Interactive, participatory AR public art shaped by its audience.',
  },
  {
    value: 'public_art',
    label: 'Public Art',
    slug: 'public-art',
    blurb: 'Site-specific augmented reality artworks placed in public space.',
  },
  {
    value: 'guest_ar',
    label: 'Guest AR',
    slug: 'guest-ar',
    blurb: 'Collaborative works by invited guest artists.',
  },
  {
    value: 'coordinates',
    label: 'Coordinates',
    slug: 'coordinates',
    blurb: 'Location-anchored projects you unlock by traveling to their coordinates.',
  },
  {
    value: 'archive',
    label: 'Archive',
    slug: 'archive',
    blurb: 'Past projects and exhibitions.',
  },
];

export const categoryBySlug = (slug: string): CategoryMeta | undefined =>
  CATEGORIES.find((c) => c.slug === slug);

export const categoryByValue = (value: Category): CategoryMeta | undefined =>
  CATEGORIES.find((c) => c.value === value);
