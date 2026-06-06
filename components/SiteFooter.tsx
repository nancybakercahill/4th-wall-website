import Link from 'next/link';
import { CATEGORIES } from '../lib/categories';

export default function SiteFooter() {
  return (
    <footer className="mt-24 border-t border-ink/10 bg-ink text-paper">
      <div className="container-page grid gap-10 py-14 sm:grid-cols-2 md:grid-cols-4">
        <div className="sm:col-span-2 md:col-span-1">
          <p className="text-lg font-semibold">4th Wall<span className="text-accent">.</span></p>
          <p className="mt-3 max-w-xs text-sm text-paper/70">
            Free augmented reality public art by Nancy Baker Cahill.
          </p>
        </div>

        <div>
          <p className="eyebrow text-paper/50">Browse</p>
          <ul className="mt-4 space-y-2 text-sm">
            {CATEGORIES.map((c) => (
              <li key={c.slug}>
                <Link href={`/${c.slug}`} className="text-paper/80 hover:text-accent">
                  {c.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        <div>
          <p className="eyebrow text-paper/50">More</p>
          <ul className="mt-4 space-y-2 text-sm">
            <li><Link href="/about" className="text-paper/80 hover:text-accent">About</Link></li>
            <li><Link href="/how-to-use" className="text-paper/80 hover:text-accent">How To Use</Link></li>
            <li><Link href="/talks" className="text-paper/80 hover:text-accent">Talks</Link></li>
            <li><Link href="/press" className="text-paper/80 hover:text-accent">Press</Link></li>
          </ul>
        </div>

        <div>
          <p className="eyebrow text-paper/50">Get the app</p>
          <ul className="mt-4 space-y-2 text-sm">
            <li><span className="text-paper/80">iOS &amp; Android</span></li>
            <li><Link href="/admin" className="text-paper/50 hover:text-accent">Admin</Link></li>
          </ul>
        </div>
      </div>
      <div className="container-page border-t border-paper/10 py-6 text-xs text-paper/50">
        © {new Date().getFullYear()} Nancy Baker Cahill Studio. All rights reserved.
      </div>
    </footer>
  );
}
