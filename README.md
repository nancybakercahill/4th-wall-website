# 4th Wall — Website

The new website for **4th Wall**, a free augmented reality public-art app by Nancy Baker Cahill.

Built with **Next.js** (App Router), **Supabase** (Postgres + Auth + Storage), styled with
**Tailwind CSS**, and deployed on **Vercel**. Content is managed through a private admin area —
no developer needed to add projects, images, or text.

## Local setup

1. **Install dependencies**
   ```bash
   npm install
   ```

2. **Create a Supabase project** at https://supabase.com (free tier is fine).

3. **Add your keys.** Copy `.env.example` to `.env.local` and fill in the three values from
   Supabase → Project Settings → API:
   ```bash
   cp .env.example .env.local
   ```
   - `NEXT_PUBLIC_SUPABASE_URL` — Project URL
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY` — anon/public key
   - `SUPABASE_SERVICE_ROLE_KEY` — service-role key (keep secret)

4. **Create the database.** In Supabase → SQL Editor, run the two files in order:
   - `supabase/migrations/0001_init.sql` — tables, security rules, storage buckets
   - `supabase/migrations/0002_seed.sql` — the existing 4th Wall projects as starting content

5. **Create your admin login.** In Supabase → Authentication → Users → Add user, create a user
   with your email and a password. That's the account you'll use at `/admin`.

6. **Run it**
   ```bash
   npm run dev
   ```
   - Public site: http://localhost:3000
   - Admin: http://localhost:3000/admin

## Managing content

Sign in at `/admin`:
- **Projects** — create, edit, publish/unpublish, delete. Drag-and-drop a cover image and add a
  gallery of images. Set **Status** to *Published* to make a project live.
- **Pages** — edit the About and How To Use text.

Every project has a **Visibility** field (Private / Public). This is groundwork for a later phase
where selected project archives become publicly accessible — no rebuild required.

## Deploy (Vercel)

1. Push this repo to GitHub.
2. Import it into Vercel (it auto-detects Next.js — no config needed).
3. Add the same three environment variables from `.env.local` in the Vercel project settings.

## Scripts

- `npm run dev` — local development
- `npm run build` — production build
- `npm run lint` — lint
