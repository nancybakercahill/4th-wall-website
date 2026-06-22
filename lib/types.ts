// Shared types mirroring the Supabase schema (supabase/migrations/0001_init.sql).

export type Category =
  | 'public_art'
  | 'participatory_public_art'
  | 'guest_ar'
  | 'coordinates'
  | 'archive';
export type Status = 'draft' | 'published';
export type Visibility = 'private' | 'public';
export type MediaKind = 'image' | 'video' | 'embed';

export interface Project {
  id: string;
  slug: string;
  title: string;
  subtitle: string | null;
  category: Category;
  year: number | null;
  description: string | null;
  credits: string | null;
  location: string | null;
  latitude: number | null;
  longitude: number | null;
  cover_image_path: string | null;
  status: Status;
  visibility: Visibility;
  sort_order: number;
  created_at: string;
  updated_at: string;
}

export interface ProjectMedia {
  id: string;
  project_id: string;
  kind: MediaKind;
  storage_path: string | null;
  url: string | null;
  caption: string | null;
  alt_text: string | null;
  sort_order: number;
  created_at: string;
}

export interface Press {
  id: string;
  project_id: string | null;
  title: string;
  outlet: string | null;
  url: string;
  published_on: string | null;
}

export interface Talk {
  id: string;
  title: string;
  description: string | null;
  url: string | null;
  event: string | null;
  talk_date: string | null;
  sort_order: number;
}

export interface Page {
  key: string;
  title: string;
  body: string | null;
  updated_at: string;
}

export interface News {
  id: string;
  title: string;
  body: string | null;
  url: string | null;
  published_on: string | null;
  sort_order: number;
  created_at: string;
}
