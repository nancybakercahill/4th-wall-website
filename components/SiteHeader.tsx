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
        className={`transition-colors hover:text-accent ${
          active ? 'text-accent' : 'text-ink'
        }`}
      >
        {label}
      </Link>
    );
  };

  return (
    <header className="sticky top-0 z-40 border-b border-ink/10 bg-paper/85 backdrop-blur">
      <div className="container-page flex items-center justify-between py-4">
        <Link href="/" className="text-lg font-semibold tracking-tight" onClick={() => setOpen(false)}>
          4th Wall<span className="text-accent">.</span>
        </Link>

        <nav className="hidden items-center gap-6 text-sm font-medium md:flex">
          {CATEGORIES.map((c) => navLink(`/${c.slug}`, c.label))}
          <span className="h-4 w-px bg-ink/15" />
          {SECONDARY.map((s) => navLink(s.href, s.label))}
        </nav>

        <button
          className="md:hidden font-mono text-xs uppercase tracking-widest"
          onClick={() => setOpen((v) => !v)}
          aria-expanded={open}
          aria-label="Toggle menu"
        >
          {open ? 'Close' : 'Menu'}
        </button>
      </div>

      {open && (
        <nav className="container-page flex flex-col gap-3 pb-5 text-base font-medium md:hidden">
          {CATEGORIES.map((c) => navLink(`/${c.slug}`, c.label))}
          <span className="my-1 h-px w-full bg-ink/10" />
          {SECONDARY.map((s) => navLink(s.href, s.label))}
        </nav>
      )}
    </header>
  );
}
