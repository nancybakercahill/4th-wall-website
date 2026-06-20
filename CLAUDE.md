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
- Migrations: `supabase/migrations/*.sql`, applied via `node scripts/run-sql.mjs <file>` with `DATABASE_URL` set

## Architecture
- **Public site**: `app/(public)/` — home, category pages (`public-art`/`guest-ar`/`coordinates`/`archive`),
  `projects/[slug]`, `about`, `how-to-use`, `talks`, `press`
- **Admin** (gated): `app/admin/` — Projects CRUD (+ image/video upload), **Home & Hero** editor,
  **Pages** (About/How-To). Auth + session gating via **`proxy.ts`** (Next 16 renamed middleware→proxy)
  + `lib/supabase/middleware.ts` `updateSession`
- **Data**: `lib/queries.ts` (read helpers; all guard `isSupabaseConfigured()` + try/catch),
  `lib/supabase/{server,client}.ts`
- **Tables**: `projects`, `project_media`, `press`, `talks`, `pages`, `site_settings` (editable hero
  copy + category blurbs). RLS: public reads published; authenticated (Nancy) writes.
- **Categories**: `lib/categories.ts` (value/label/slug/blurb); blurbs overridable via `site_settings`
- **Media**: `lib/media.ts` `mediaUrl()` — passes through absolute URLs and `/public` paths, else Supabase storage

## Design system (cyberpunk editorial)
- Palette: ink `#141414`, paper `#fff`, magenta `#ff00ff`, neon yellow `#e5ff00`, acid green `#9eff00`, cyan `#00f0ff`
- Fonts: **Space Grotesk** (display) + **Inter** (body). (Everett was wanted; webfont license pending.)
- **Hero**: full-bleed CENTO scene (`public/brand/cento-scene.jpg`) as a magenta duotone; animated
  "hologram" headline (materialize → glitch → slow dissolve) defined in `app/globals.css`; glowing neon line
- **Landing category boxes**: neon-yellow hover
- **Press / Talks / How To Use / About**: black bg, acid-green bulleted links, display font
- CENTO **project card** uses `public/brand/BEST_CENTO_April1.png`. Brand assets in `public/brand/`.

## Status (as of 2026-06)
Infrastructure + content imported (24 projects, ~99 press items, talks, pages) from 4thwallapp.org
and nancybakercahill.com. Design pass largely done. **Nancy is doing a content-editing pass via
`/admin`.** Then: full QA sweep → finalize design → deploy.

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
