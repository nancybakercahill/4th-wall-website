-- News / announcements (exhibitions, awards, updates).
create table if not exists public.news (
  id           uuid primary key default gen_random_uuid(),
  title        text not null,
  body         text,
  url          text,
  published_on date,
  sort_order   integer not null default 0,
  created_at   timestamptz not null default now()
);

alter table public.news enable row level security;

drop policy if exists news_public_read on public.news;
create policy news_public_read on public.news for select using (true);

drop policy if exists news_admin_all on public.news;
create policy news_admin_all on public.news
  for all to authenticated using (true) with check (true);
