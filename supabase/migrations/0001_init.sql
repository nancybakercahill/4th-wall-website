-- 4th Wall — initial schema, RLS, and storage buckets.
-- Run this in the Supabase SQL editor (Dashboard → SQL → New query) or via the Supabase CLI.

-- ---------------------------------------------------------------------------
-- Extensions
-- ---------------------------------------------------------------------------
create extension if not exists "pgcrypto"; -- for gen_random_uuid()

-- ---------------------------------------------------------------------------
-- Helper: auto-update updated_at on row changes
-- ---------------------------------------------------------------------------
create or replace function public.set_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

-- ---------------------------------------------------------------------------
-- projects
-- ---------------------------------------------------------------------------
create table if not exists public.projects (
  id               uuid primary key default gen_random_uuid(),
  slug             text not null unique,
  title            text not null,
  subtitle         text,
  category         text not null check (category in ('public_art','guest_ar','coordinates','archive')),
  year             integer,
  description      text,
  credits          text,
  location         text,
  latitude         numeric,
  longitude        numeric,
  cover_image_path text,
  status           text not null default 'draft' check (status in ('draft','published')),
  visibility       text not null default 'private' check (visibility in ('private','public')),
  sort_order       integer not null default 0,
  created_at       timestamptz not null default now(),
  updated_at       timestamptz not null default now()
);

create index if not exists projects_category_idx on public.projects (category);
create index if not exists projects_status_idx on public.projects (status);

drop trigger if exists projects_set_updated_at on public.projects;
create trigger projects_set_updated_at before update on public.projects
  for each row execute function public.set_updated_at();

-- ---------------------------------------------------------------------------
-- project_media
-- ---------------------------------------------------------------------------
create table if not exists public.project_media (
  id           uuid primary key default gen_random_uuid(),
  project_id   uuid not null references public.projects(id) on delete cascade,
  kind         text not null default 'image' check (kind in ('image','video','embed')),
  storage_path text,
  url          text,
  caption      text,
  alt_text     text,
  sort_order   integer not null default 0,
  created_at   timestamptz not null default now()
);

create index if not exists project_media_project_idx on public.project_media (project_id);

-- ---------------------------------------------------------------------------
-- press
-- ---------------------------------------------------------------------------
create table if not exists public.press (
  id           uuid primary key default gen_random_uuid(),
  project_id   uuid references public.projects(id) on delete set null,
  title        text not null,
  outlet       text,
  url          text not null,
  published_on date
);

-- ---------------------------------------------------------------------------
-- talks
-- ---------------------------------------------------------------------------
create table if not exists public.talks (
  id          uuid primary key default gen_random_uuid(),
  title       text not null,
  description text,
  url         text,
  event       text,
  talk_date   date,
  sort_order  integer not null default 0
);

-- ---------------------------------------------------------------------------
-- pages (editable singletons: about, how-to-use, etc.)
-- ---------------------------------------------------------------------------
create table if not exists public.pages (
  key        text primary key,
  title      text not null,
  body       text,
  updated_at timestamptz not null default now()
);

drop trigger if exists pages_set_updated_at on public.pages;
create trigger pages_set_updated_at before update on public.pages
  for each row execute function public.set_updated_at();

-- ===========================================================================
-- Row-Level Security
--   Public (anon) can READ published content only.
--   Authenticated users (the admin) can do everything.
-- ===========================================================================
alter table public.projects      enable row level security;
alter table public.project_media enable row level security;
alter table public.press         enable row level security;
alter table public.talks         enable row level security;
alter table public.pages         enable row level security;

-- projects: public reads published rows; authed users manage all.
drop policy if exists projects_public_read on public.projects;
create policy projects_public_read on public.projects
  for select using (status = 'published');

drop policy if exists projects_admin_all on public.projects;
create policy projects_admin_all on public.projects
  for all to authenticated using (true) with check (true);

-- project_media: public reads media whose parent project is published.
drop policy if exists media_public_read on public.project_media;
create policy media_public_read on public.project_media
  for select using (
    exists (
      select 1 from public.projects p
      where p.id = project_media.project_id and p.status = 'published'
    )
  );

drop policy if exists media_admin_all on public.project_media;
create policy media_admin_all on public.project_media
  for all to authenticated using (true) with check (true);

-- press: public read all; authed manage.
drop policy if exists press_public_read on public.press;
create policy press_public_read on public.press for select using (true);
drop policy if exists press_admin_all on public.press;
create policy press_admin_all on public.press for all to authenticated using (true) with check (true);

-- talks: public read all; authed manage.
drop policy if exists talks_public_read on public.talks;
create policy talks_public_read on public.talks for select using (true);
drop policy if exists talks_admin_all on public.talks;
create policy talks_admin_all on public.talks for all to authenticated using (true) with check (true);

-- pages: public read all; authed manage.
drop policy if exists pages_public_read on public.pages;
create policy pages_public_read on public.pages for select using (true);
drop policy if exists pages_admin_all on public.pages;
create policy pages_admin_all on public.pages for all to authenticated using (true) with check (true);

-- ===========================================================================
-- Storage buckets
--   media    — public-read images/cover art for published projects.
--   archives — PRIVATE, reserved for the future gated-archive feature.
-- ===========================================================================
insert into storage.buckets (id, name, public)
values ('media', 'media', true)
on conflict (id) do nothing;

insert into storage.buckets (id, name, public)
values ('archives', 'archives', false)
on conflict (id) do nothing;

-- Anyone can read the public media bucket.
drop policy if exists media_read on storage.objects;
create policy media_read on storage.objects
  for select using (bucket_id = 'media');

-- Only authenticated users (admin) can upload/update/delete media.
drop policy if exists media_write on storage.objects;
create policy media_write on storage.objects
  for insert to authenticated with check (bucket_id = 'media');
drop policy if exists media_update on storage.objects;
create policy media_update on storage.objects
  for update to authenticated using (bucket_id = 'media');
drop policy if exists media_delete on storage.objects;
create policy media_delete on storage.objects
  for delete to authenticated using (bucket_id = 'media');

-- Archives bucket: authenticated-only for now (public access added in a later phase).
drop policy if exists archives_admin_all on storage.objects;
create policy archives_admin_all on storage.objects
  for all to authenticated using (bucket_id = 'archives') with check (bucket_id = 'archives');
