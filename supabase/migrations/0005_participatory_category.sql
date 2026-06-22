-- Allow the new 'participatory_public_art' project category.
-- Drops any existing CHECK constraint on projects.category, then re-adds it
-- with the expanded list.

do $$
declare cname text;
begin
  for cname in
    select con.conname
    from pg_constraint con
    join pg_class rel on rel.oid = con.conrelid
    join pg_namespace nsp on nsp.oid = rel.relnamespace
    where nsp.nspname = 'public'
      and rel.relname = 'projects'
      and con.contype = 'c'
      and pg_get_constraintdef(con.oid) ilike '%category%'
  loop
    execute format('alter table public.projects drop constraint %I', cname);
  end loop;
end $$;

alter table public.projects
  add constraint projects_category_check
  check (category in (
    'public_art',
    'participatory_public_art',
    'guest_ar',
    'coordinates',
    'archive'
  ));
