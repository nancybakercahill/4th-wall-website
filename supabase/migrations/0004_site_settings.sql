-- Editable site copy (hero text + category blurbs), so they can be changed
-- from the admin without code edits. Simple key/value store.

create table if not exists public.site_settings (
  key        text primary key,
  value      text,
  updated_at timestamptz not null default now()
);

alter table public.site_settings enable row level security;

drop policy if exists settings_public_read on public.site_settings;
create policy settings_public_read on public.site_settings for select using (true);

drop policy if exists settings_admin_all on public.site_settings;
create policy settings_admin_all on public.site_settings
  for all to authenticated using (true) with check (true);

-- Seed with the current hardcoded copy so editing starts from what's live.
insert into public.site_settings (key, value) values
  ('hero_tag', '[ free // augmented reality // public art ]'),
  ('hero_headline', 'interactive digital artworks living in the physical world'),
  ('hero_intro', '4th Wall is a free augmented reality app by artist Nancy Baker Cahill. Explore every project — past, present, and upcoming through 2026'),
  ('blurb_public_art', 'Site-specific augmented reality artworks placed in public space.'),
  ('blurb_guest_ar', 'Collaborative works by invited guest artists.'),
  ('blurb_coordinates', 'Location-anchored projects you unlock by traveling to their coordinates.'),
  ('blurb_archive', 'Past projects and exhibitions.')
on conflict (key) do nothing;
