-- Additional press (2025–2026). Sets the correct date on each (fixing any that
-- were imported without one) and inserts the ones not already present.
-- Idempotent and safe to re-run.

-- 1) Ensure the correct date/outlet/title on any already-present URLs.
update public.press
  set published_on = '2026-02-07', outlet = 'Northwest Arkansas Democrat-Gazette',
      title = '21c Museum Hotel Bentonville Gets Supernatural'
  where url = 'https://www.nwaonline.com/news/2026/feb/07/21c-museum-hotel-bentonville-gets-supernatural-in/';
update public.press
  set published_on = '2026-02-27', outlet = 'The Art Newspaper',
      title = 'AMBOS: Frieze Los Angeles Stand Moved'
  where url = 'https://www.theartnewspaper.com/2026/02/27/ambos-frieze-los-angeles-stand-moved';
update public.press
  set published_on = '2025-06-04', outlet = 'LACMA Unframed',
      title = 'We Are All We Got: Nancy Baker Cahill, Substrate'
  where url = 'https://unframed.lacma.org/2025/06/04/we-are-all-we-got-nancy-baker-cahill-substrate';
update public.press
  set published_on = '2025-10-01', outlet = 'Right Click Save',
      title = 'On New Border Ecologies: An Interview with Nancy Baker Cahill'
  where url = 'https://www.rightclicksave.com/article/on-new-border-ecologies-digital-art-interview-nancy-baker-cahill-yatreda-simon-fernandes-emann-odufu';

-- 2) Insert the ones not already present.
insert into public.press (title, outlet, url, published_on)
select '21c Museum Hotel Bentonville Gets Supernatural', 'Northwest Arkansas Democrat-Gazette',
       'https://www.nwaonline.com/news/2026/feb/07/21c-museum-hotel-bentonville-gets-supernatural-in/', '2026-02-07'
where not exists (select 1 from public.press where url =
  'https://www.nwaonline.com/news/2026/feb/07/21c-museum-hotel-bentonville-gets-supernatural-in/');

insert into public.press (title, outlet, url, published_on)
select 'AMBOS: Frieze Los Angeles Stand Moved', 'The Art Newspaper',
       'https://www.theartnewspaper.com/2026/02/27/ambos-frieze-los-angeles-stand-moved', '2026-02-27'
where not exists (select 1 from public.press where url =
  'https://www.theartnewspaper.com/2026/02/27/ambos-frieze-los-angeles-stand-moved');

insert into public.press (title, outlet, url, published_on)
select 'We Are All We Got: Nancy Baker Cahill, Substrate', 'LACMA Unframed',
       'https://unframed.lacma.org/2025/06/04/we-are-all-we-got-nancy-baker-cahill-substrate', '2025-06-04'
where not exists (select 1 from public.press where url =
  'https://unframed.lacma.org/2025/06/04/we-are-all-we-got-nancy-baker-cahill-substrate');

insert into public.press (title, outlet, url, published_on)
select 'On New Border Ecologies: An Interview with Nancy Baker Cahill', 'Right Click Save',
       'https://www.rightclicksave.com/article/on-new-border-ecologies-digital-art-interview-nancy-baker-cahill-yatreda-simon-fernandes-emann-odufu', '2025-10-01'
where not exists (select 1 from public.press where url =
  'https://www.rightclicksave.com/article/on-new-border-ecologies-digital-art-interview-nancy-baker-cahill-yatreda-simon-fernandes-emann-odufu');
