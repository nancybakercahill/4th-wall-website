import { createClient } from './supabase/server';
import type { Project, ProjectMedia, Press, Talk, Page, Category } from './types';

// True only when both public Supabase env vars are present. Lets the site build
// and render placeholders before the backend is configured.
export function isSupabaseConfigured(): boolean {
  return Boolean(
    process.env.NEXT_PUBLIC_SUPABASE_URL && process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
  );
}

async function db() {
  return createClient();
}

export async function getPublishedProjects(category?: Category): Promise<Project[]> {
  if (!isSupabaseConfigured()) return [];
  try {
    const supabase = await db();
    let q = supabase
      .from('projects')
      .select('*')
      .eq('status', 'published')
      .order('sort_order', { ascending: true })
      .order('title', { ascending: true });
    if (category) q = q.eq('category', category);
    const { data } = await q;
    return (data as Project[]) ?? [];
  } catch {
    return [];
  }
}

export async function getProjectBySlug(
  slug: string
): Promise<{ project: Project; media: ProjectMedia[]; press: Press[] } | null> {
  if (!isSupabaseConfigured()) return null;
  try {
    const supabase = await db();
    const { data: project } = await supabase
      .from('projects')
      .select('*')
      .eq('slug', slug)
      .eq('status', 'published')
      .maybeSingle();
    if (!project) return null;

    const { data: media } = await supabase
      .from('project_media')
      .select('*')
      .eq('project_id', (project as Project).id)
      .order('sort_order', { ascending: true });

    const { data: press } = await supabase
      .from('press')
      .select('*')
      .eq('project_id', (project as Project).id)
      .order('published_on', { ascending: false });

    return {
      project: project as Project,
      media: (media as ProjectMedia[]) ?? [],
      press: (press as Press[]) ?? [],
    };
  } catch {
    return null;
  }
}

export async function getPage(key: string): Promise<Page | null> {
  if (!isSupabaseConfigured()) return null;
  try {
    const supabase = await db();
    const { data } = await supabase.from('pages').select('*').eq('key', key).maybeSingle();
    return (data as Page) ?? null;
  } catch {
    return null;
  }
}

export async function getTalks(): Promise<Talk[]> {
  if (!isSupabaseConfigured()) return [];
  try {
    const supabase = await db();
    const { data } = await supabase
      .from('talks')
      .select('*')
      .order('sort_order', { ascending: true })
      .order('talk_date', { ascending: false });
    return (data as Talk[]) ?? [];
  } catch {
    return [];
  }
}

export async function getPress(): Promise<Press[]> {
  if (!isSupabaseConfigured()) return [];
  try {
    const supabase = await db();
    const { data } = await supabase
      .from('press')
      .select('*')
      .order('published_on', { ascending: false, nullsFirst: false });
    return (data as Press[]) ?? [];
  } catch {
    return [];
  }
}
