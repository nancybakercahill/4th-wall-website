# 4th Wall — Project Guide

Context for Claude Code (auto-loaded each session, on any machine). Keep this updated.

## What this is
Rebuild of the **4th Wall** website — Nancy Baker Cahill's free augmented-reality public-art app —
replacing the old Wix site at 4thwallapp.org. Goals: feature **all projects through 2026**, give
Nancy a **self-serve admin** to manage content, and (later) make **certain archives publicly
accessible**. Nancy is the artist/owner and non-technical — keep the admin simple and explain
clearly.

## Stack
- **Next.js 16** (App Router) + **React 19**, TypeScript
- **Supabase** (Postgres + Auth + Storage) — all content lives here
- **Tailwind CSS v3**
- ESLint **flat config** (`eslint.config.mjs`); eslint pinned to **9** (10 breaks the bundled react plugin)
- `npm audit` = **0 vulnerabilities**; do NOT run `npm audit fix --force`
- Deploy target: **Vercel** + custom domain (4thwallapp.org) — OR possibly self-host on Nancy's
  **Synology** (decide at launch)

## Run it
- `npm install` then `npm run dev` → http://localhost:3000
- Requires `.env.local` (git-ignored): `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`
  (+ `DATABASE_URL` only for running migrations)
- Migrations: `supabase/migrations/*.sql`, applied via `node scripts/run-sql.mjs <file>` with `DATABASE_URL` set.
  ⚠️ The **direct** DB host (`db.<ref>.supabase.co`) is IPv6-only and unreachable from some machines.
  Use the **session pooler**: `postgresql://postgres.<ref>:<pw>@aws-1-us-east-2.pooler.supabase.com:5432/postgres`
  (password is in `.env.local`'s `DATABASE_URL`). App reads/writes go through PostgREST (HTTPS) and are unaffected.

## Architecture
- **Public site**: `app/(public)/` — home, category pages (`participatory-public-art`/`public-art`/
  `guest-ar`/`coordinates`/`archive`), `projects/[slug]`, `about`, `how-to-use`, `talks`, `press`, `news`
- **Admin** (gated): `app/admin/` — Projects CRUD (+ image/video upload), **Home & Hero**, **Pages**
  (About/How-To), and add/edit/delete editors for **Talks**, **Press**, **News**. Auth + session gating
  via **`proxy.ts`** (Next 16 renamed middleware→proxy) + `lib/supabase/middleware.ts` `updateSession`
- **Data**: `lib/queries.ts` (read helpers; all guard `isSupabaseConfigured()` + try/catch),
  `lib/supabase/{server,client}.ts`
- **Tables**: `projects`, `project_media`, `press`, `talks`, `news`, `pages`, `site_settings` (editable
  hero copy + category blurbs). RLS: public reads published; authenticated (Nancy) writes.
- **Categories**: `lib/categories.ts` (value/label/slug/blurb); blurbs overridable via `site_settings`.
  Order = array order. Adding one needs: array entry + `Category` type + a route folder + the DB CHECK
  (migration). Current: Participatory Public Art, Public Art, Guest AR, Coordinates, Archive.
- **Rich text**: `components/RichText.tsx` `renderRichText(text, linkClass?)` turns `[label](url)` + bare
  URLs into links. Used for hero intro, About, How-To, project description/credits, news body. Default
  link = acid-green (`LINK_ACID`); pass `LINK_ON_LIGHT` on the white project pages.
- **Media**: `lib/media.ts` `mediaUrl()` — passes through absolute URLs and `/public` paths, else Supabase storage

## Design system (cyberpunk editorial)
- Palette: ink `#141414`, paper `#fff`, magenta `#ff00ff`, neon yellow `#e5ff00`, acid green `#9eff00`, cyan `#00f0ff`
- Fonts: **Space Grotesk** (display) + **Inter** (body). (Everett was wanted; webfont license pending.)
- **Hero**: full-bleed CENTO scene (`public/brand/cento-scene.jpg`) as a magenta duotone; animated
  "hologram" headline (materialize → glitch → slow dissolve) defined in `app/globals.css`; glowing neon line
- **Landing category boxes**: neon-yellow hover
- **Press / Talks / How To Use / About**: black bg, acid-green bulleted links, display font
- CENTO **project card** uses `public/brand/BEST_CENTO_April1.png`. Brand assets in `public/brand/`.

## Status (2026-06-22)
Content imported + actively edited by Nancy via `/admin` (now ~26 projects incl. Body Politic, FREE;
~100 press items; talks; News section added). Rich-text links, acid-green link colour, Participatory
Public Art category, News section, and Talks/Press/News admin editors all done & verified.

**LIVE on Vercel: https://4th-wall-website.vercel.app** (verified working — content, all sections,
admin gated). The GitHub repo was made **PUBLIC** to clear Vercel's free-plan "git author not a team
member" deploy block (repo has no secrets; the publishable key is public by design + RLS-protected).
Pushes now auto-deploy. Vercel team is "NBC's projects" (Hobby/free).

**LAUNCHED (2026-06-22): 4thwallapp.org is LIVE** on Vercel over HTTPS (apex redirects to www; SSL
issued; nameservers moved to Vercel). **Analytics + SEO done:** `app/layout.tsx` rich metadata +
OG/Twitter cards + JSON-LD (Person=Nancy "AR/new-media artist", WebSite, MobileApplication, plus
per-project VisualArtwork), `app/sitemap.ts`, `app/robots.ts`, `lib/site.ts` (shared identity +
keywords leading with her name + AR + "museum-quality AR artworks"). Person `sameAs` → real Wikidata
(Q75452977), Wikipedia, Whitney, Instagram, LinkedIn. SEO playbook (Wikidata edits + matching schema
for nancybakercahill.com) in `docs/SEO-profile-boost.md`.

**Wix images migrated (2026-06-22):** old import left 116 images on `static.wixstatic.com` (8 covers +
110 gallery). `scripts/migrate-wix-images.mjs` copied them all into the Supabase `media` bucket
(`migrated/…`) + repointed the DB; **0 Wix references remain** — safe to cancel Wix. (Needs
`SUPABASE_SERVICE_ROLE_KEY` in `.env.local`; `.com` file extensions are cosmetic, content-types OK.)

**Remaining:** Nancy does a final visual click-through → **cancels Wix**. Then add Legacy +
Dimensional Drawings images; hologram timing tweak. Nancy works from both Mac and PC (GitHub sync;
pull before, push after).

## Known gaps / TODO
- **Legacy** + **Dimensional Drawings** need images (add via admin)
- **About** copy to be rewritten by Nancy
- **Hologram headline** animation needs timing tweaks
- **Pre-launch**: Vercel deploy + DNS; analytics (Vercel Web Analytics + Speed Insights); SEO
  (sitemap, robots.txt, OG/Twitter cards, per-project meta, structured data); confirm Everett license

## Working conventions
- **Content** edits → Supabase (shared across machines automatically). **Code** → GitHub:
  **pull before you start, push when you finish.**
- Commit messages end with: `Co-Authored-By: Claude Opus 4.8 (1M context) <noreply@anthropic.com>`
