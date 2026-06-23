import Link from 'next/link';
import { CATEGORIES } from '../lib/categories';

export default function SiteFooter() {
  return (
    <footer className="mt-28 bg-ink text-paper">
      {/* signature brick band (white, inverted) */}
      <div className="wall-band-invert h-3 w-full" aria-hidden />

      <div className="container-page grid gap-10 py-16 sm:grid-cols-2 md:grid-cols-4">
        <div className="sm:col-span-2 md:col-span-1">
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            src="/brand/logo-stacked.png"
            alt="4th Wall"
            className="h-20 w-auto invert"
          />
          <p className="mt-5 max-w-xs text-sm text-paper/60">
            Free augmented reality public art by Nancy Baker Cahill.
          </p>
        </div>

        <div>
          <p className="eyebrow text-paper/40">Browse</p>
          <ul className="mt-4 space-y-2 text-sm">
            {CATEGORIES.map((c) => (
              <li key={c.slug}>
                <Link href={`/${c.slug}`} className="text-paper/80 transition-opacity hover:opacity-100 hover:underline underline-offset-4">
                  {c.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        <div>
          <p className="eyebrow text-paper/40">More</p>
          <ul className="mt-4 space-y-2 text-sm">
            <li><Link href="/about" className="text-paper/80 hover:underline underline-offset-4">About</Link></li>
            <li><Link href="/how-to-use" className="text-paper/80 hover:underline underline-offset-4">How To Use</Link></li>
            <li><Link href="/talks" className="text-paper/80 hover:underline underline-offset-4">Talks</Link></li>
            <li><Link href="/press" className="text-paper/80 hover:underline underline-offset-4">Press</Link></li>
            <li><Link href="/news" className="text-paper/80 hover:underline underline-offset-4">News</Link></li>
          </ul>
        </div>

        <div>
          <p className="eyebrow text-paper/40">Get the app</p>
          <ul className="mt-4 space-y-2 text-sm">
            <li><span className="text-paper/80">iOS &amp; Android</span></li>
          </ul>
        </div>
      </div>

      <div className="container-page border-t border-paper/15 py-6 text-xs text-paper/45">
        © {new Date().getFullYear()} Nancy Baker Cahill Studio. All rights reserved.
      </div>
    </footer>
  );
}
