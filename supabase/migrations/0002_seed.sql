-- 4th Wall — seed data.
-- Pre-loads the projects currently visible on 4thwallapp.org so there are real
-- examples to edit. They are seeded as PUBLISHED so the site renders content on
-- first run; edit, unpublish, fill in years/descriptions, and add cover images
-- from the admin. Years/descriptions are intentionally left blank to avoid
-- guessing facts — fill them in yourself.
--
-- Idempotent: re-running will not create duplicates (on conflict on slug).

insert into public.projects (slug, title, category, status, visibility, sort_order) values
  -- Public Art
  ('stone-speaks',          'Stone Speaks',                      'public_art', 'published', 'public', 10),
  ('mushroom-cloud-nyc',    'Mushroom Cloud NYC: Rise @ Tribeca','public_art', 'published', 'public', 20),
  ('corpus',                'Corpus',                            'public_art', 'published', 'public', 30),
  ('siren-songs',           'Siren Songs',                       'public_art', 'published', 'public', 40),
  ('mushroom-cloud-miami',  'Mushroom Cloud (Miami)',            'public_art', 'published', 'public', 50),
  ('motherboard',           'Motherboard',                       'public_art', 'published', 'public', 60),
  ('liberty-bell',          'Liberty Bell',                      'public_art', 'published', 'public', 70),
  ('ever-now',              'Ever Now',                          'public_art', 'published', 'public', 80),
  ('dimensional-drawings',  'Dimensional Drawings',              'public_art', 'published', 'public', 90),
  -- Guest AR
  ('border-wall',           'Border Wall',                       'guest_ar',   'published', 'public', 10),
  ('encoding-futures',      'Encoding Futures',                  'guest_ar',   'published', 'public', 20),
  -- Coordinates
  ('wolves-who-did-not-perish', 'The Wolves Who Did Not Perish', 'coordinates','published', 'public', 10),
  ('texas-biennial',        'Texas Biennial',                    'coordinates','published', 'public', 20),
  ('in-plain-sight',        'In Plain Sight',                    'coordinates','published', 'public', 30),
  ('battlegrounds',         'Battlegrounds',                     'coordinates','published', 'public', 40),
  ('defining-line',         'Defining Line',                     'coordinates','published', 'public', 50),
  -- Archive
  ('mushroom-cloud-la',     'Mushroom Cloud LA',                 'archive',    'published', 'public', 10),
  ('legacy',                'Legacy',                            'archive',    'published', 'public', 20),
  ('desert-x',              'Desert X',                          'archive',    'published', 'public', 30)
on conflict (slug) do nothing;

-- Editable content pages.
insert into public.pages (key, title, body) values
  ('about', 'About',
   'Edit this page from the admin. 4th Wall offers free, augmented reality public art experiences, bringing digital artworks into physical space through your phone.'),
  ('how-to-use', 'How To Use',
   'Edit this page from the admin. 1. Download the 4th Wall app on iOS or Android. 2. Open a project. 3. Point your phone and explore the artwork in augmented reality.')
on conflict (key) do nothing;
