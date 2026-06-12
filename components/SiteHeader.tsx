'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useState } from 'react';
import { CATEGORIES } from '../lib/categories';

const SECONDARY = [
  { href: '/about', label: 'About' },
  { href: '/how-to-use', label: 'How To Use' },
  { href: '/talks', label: 'Talks' },
  { href: '/press', label: 'Press' },
];

export default function SiteHeader() {
  const pathname = usePathname();
  const [open, setOpen] = useState(false);

  const navLink = (href: string, label: string) => {
    const active = pathname === href || pathname.startsWith(href + '/');
    return (
      <Link
        key={href}
        href={href}
        onClick={() => setOpen(false)}
        className={`font-display text-xs uppercase tracking-[0.15em] transition-opacity hover:opacity-100 ${
          active ? 'opacity-100 underline underline-offset-4' : 'opacity-60'
        }`}
      >
        {label}
      </Link>
    );
  };

  return (
    <header className="sticky top-0 z-40 border-b border-ink bg-paper">
      {/* signature brick strip */}
      <div className="wall-band h-2 w-full" aria-hidden />

      <div className="container-page flex items-center justify-between py-4">
        <Link href="/" onClick={() => setOpen(false)} aria-label="4th Wall — home">
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img src="/brand/logo-stacked.png" alt="4th Wall" className="h-11 w-auto" />
        </Link>

        <nav className="hidden items-center gap-6 md:flex">
          {CATEGORIES.map((c) => navLink(`/${c.slug}`, c.label))}
          <span className="h-3 w-px bg-ink/25" />
          {SECONDARY.map((s) => navLink(s.href, s.label))}
        </nav>

        <button
          className="font-display text-xs uppercase tracking-[0.15em] md:hidden"
          onClick={() => setOpen((v) => !v)}
          aria-expanded={open}
          aria-label="Toggle menu"
        >
          {open ? 'Close' : 'Menu'}
        </button>
      </div>

      {open && (
        <nav className="container-page flex flex-col gap-4 pb-6 md:hidden">
          {CATEGORIES.map((c) => navLink(`/${c.slug}`, c.label))}
          <span className="my-1 h-px w-full bg-ink/15" />
          {SECONDARY.map((s) => navLink(s.href, s.label))}
        </nav>
      )}
    </header>
  );
}
