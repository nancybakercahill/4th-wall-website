'use server';

import { revalidatePath } from 'next/cache';
import { redirect } from 'next/navigation';
import { createClient } from '../../lib/supabase/server';
import type { Category, Status, Visibility, MediaKind } from '../../lib/types';

// Turn a title into a URL-safe slug.
function slugify(input: string): string {
  return input
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}

function num(v: FormDataEntryValue | null): number | null {
  if (v === null || v === '') return null;
  const n = Number(v);
  return Number.isFinite(n) ? n : null;
}

function str(v: FormDataEntryValue | null): string | null {
  const s = (v as string | null)?.trim();
  return s ? s : null;
}

function projectFields(formData: FormData) {
  const title = (str(formData.get('title')) ?? 'Untitled') as string;
  const slug = str(formData.get('slug')) || slugify(title);
  return {
    title,
    slug,
    subtitle: str(formData.get('subtitle')),
    category: (formData.get('category') as Category) ?? 'public_art',
    year: num(formData.get('year')),
    description: str(formData.get('description')),
    credits: str(formData.get('credits')),
    location: str(formData.get('location')),
    latitude: num(formData.get('latitude')),
    longitude: num(formData.get('longitude')),
    cover_image_path: str(formData.get('cover_image_path')),
    status: (formData.get('status') as Status) ?? 'draft',
    visibility: (formData.get('visibility') as Visibility) ?? 'private',
    sort_order: num(formData.get('sort_order')) ?? 0,
  };
}

export async function createProject(formData: FormData) {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from('projects')
    .insert(projectFields(formData))
    .select('id')
    .single();
  if (error) throw new Error(error.message);
  revalidatePath('/admin/projects');
  redirect(`/admin/projects/${data.id}/edit?saved=1`);
}

export async function updateProject(id: string, formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('projects').update(projectFields(formData)).eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/projects');
  revalidatePath('/');
  redirect(`/admin/projects/${id}/edit?saved=1`);
}

export async function deleteProject(id: string) {
  const supabase = await createClient();
  const { error } = await supabase.from('projects').delete().eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/projects');
  redirect('/admin/projects');
}

export async function addMedia(
  projectId: string,
  payload: { storage_path: string; kind?: MediaKind; caption?: string; alt_text?: string }
) {
  const supabase = await createClient();
  const { error } = await supabase.from('project_media').insert({
    project_id: projectId,
    kind: payload.kind ?? 'image',
    storage_path: payload.storage_path,
    caption: payload.caption ?? null,
    alt_text: payload.alt_text ?? null,
  });
  if (error) throw new Error(error.message);
  revalidatePath(`/admin/projects/${projectId}/edit`);
}

export async function deleteMedia(id: string, projectId: string) {
  const supabase = await createClient();
  const { error } = await supabase.from('project_media').delete().eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath(`/admin/projects/${projectId}/edit`);
}

export async function savePage(key: string, formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('pages').upsert({
    key,
    title: (str(formData.get('title')) ?? key) as string,
    body: str(formData.get('body')),
  });
  if (error) throw new Error(error.message);
  revalidatePath('/admin/pages');
  revalidatePath(`/${key}`);
  redirect('/admin/pages?saved=1');
}

// Editable hero copy + category blurbs (key/value site_settings).
export async function saveSettings(formData: FormData) {
  const supabase = await createClient();
  const keys = [
    'hero_tag',
    'hero_headline',
    'hero_intro',
    'blurb_public_art',
    'blurb_guest_ar',
    'blurb_coordinates',
    'blurb_archive',
  ];
  const rows = keys.map((key) => ({ key, value: str(formData.get(key)) ?? '' }));
  const { error } = await supabase.from('site_settings').upsert(rows);
  if (error) throw new Error(error.message);
  ['/', '/public-art', '/guest-ar', '/coordinates', '/archive'].forEach((p) =>
    revalidatePath(p)
  );
  redirect('/admin/home?saved=1');
}

// ---- Talks ----------------------------------------------------------------

function talkFields(formData: FormData) {
  return {
    title: (str(formData.get('title')) ?? 'Untitled') as string,
    url: str(formData.get('url')),
    event: str(formData.get('event')),
    talk_date: str(formData.get('talk_date')),
    description: str(formData.get('description')),
    sort_order: num(formData.get('sort_order')) ?? 0,
  };
}

export async function createTalk(formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('talks').insert(talkFields(formData));
  if (error) throw new Error(error.message);
  revalidatePath('/admin/talks');
  revalidatePath('/talks');
  redirect('/admin/talks?saved=1');
}

export async function updateTalk(id: string, formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('talks').update(talkFields(formData)).eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/talks');
  revalidatePath('/talks');
  redirect('/admin/talks?saved=1');
}

export async function deleteTalk(id: string) {
  const supabase = await createClient();
  const { error } = await supabase.from('talks').delete().eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/talks');
  revalidatePath('/talks');
  redirect('/admin/talks?deleted=1');
}

// ---- Press ----------------------------------------------------------------

function pressFields(formData: FormData) {
  return {
    title: (str(formData.get('title')) ?? 'Untitled') as string,
    outlet: str(formData.get('outlet')),
    url: (str(formData.get('url')) ?? '') as string,
    published_on: str(formData.get('published_on')),
  };
}

export async function createPress(formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('press').insert(pressFields(formData));
  if (error) throw new Error(error.message);
  revalidatePath('/admin/press');
  revalidatePath('/press');
  redirect('/admin/press?saved=1');
}

export async function updatePress(id: string, formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('press').update(pressFields(formData)).eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/press');
  revalidatePath('/press');
  redirect('/admin/press?saved=1');
}

export async function deletePress(id: string) {
  const supabase = await createClient();
  const { error } = await supabase.from('press').delete().eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/press');
  revalidatePath('/press');
  redirect('/admin/press?deleted=1');
}

// ---- News -----------------------------------------------------------------

function newsFields(formData: FormData) {
  return {
    title: (str(formData.get('title')) ?? 'Untitled') as string,
    body: str(formData.get('body')),
    url: str(formData.get('url')),
    published_on: str(formData.get('published_on')),
    sort_order: num(formData.get('sort_order')) ?? 0,
  };
}

export async function createNews(formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('news').insert(newsFields(formData));
  if (error) throw new Error(error.message);
  revalidatePath('/admin/news');
  revalidatePath('/news');
  redirect('/admin/news?saved=1');
}

export async function updateNews(id: string, formData: FormData) {
  const supabase = await createClient();
  const { error } = await supabase.from('news').update(newsFields(formData)).eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/news');
  revalidatePath('/news');
  redirect('/admin/news?saved=1');
}

export async function deleteNews(id: string) {
  const supabase = await createClient();
  const { error } = await supabase.from('news').delete().eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath('/admin/news');
  revalidatePath('/news');
  redirect('/admin/news?deleted=1');
}

export async function signOut() {
  const supabase = await createClient();
  await supabase.auth.signOut();
  redirect('/admin/login');
}
