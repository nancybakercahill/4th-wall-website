import Link from 'next/link';
import { createClient } from '../../lib/supabase/server';
import { isSupabaseConfigured } from '../../lib/queries';
import { signOut } from './actions';

export const metadata = { title: 'Admin' };

const NAV = [
  { href: '/admin', label: 'Dashboard' },
  { href: '/admin/projects', label: 'Projects' },
  { href: '/admin/pages', label: 'Pages' },
];

export default async function AdminLayout({ children }: { children: React.ReactNode }) {
  // Show a setup notice instead of crashing before Supabase keys are added.
  if (!isSupabaseConfigured()) {
    return (
      <div className="flex min-h-screen items-center justify-center px-5">
        <div className="max-w-md text-center">
          <h1 className="text-xl font-semibold">Admin not configured yet</h1>
          <p className="mt-3 text-sm text-ink/60">
            Add your Supabase keys to <code className="rounded bg-ink/10 px-1">.env.local</code> and
            restart the dev server to enable the admin. See the README for setup steps.
          </p>
        </div>
      </div>
    );
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Login page (and the unauthenticated state) renders without the admin chrome.
  if (!user) return <div className="min-h-screen">{children}</div>;

  return (
    <div className="min-h-screen bg-paper">
      <header className="border-b border-ink/10 bg-white">
        <div className="container-page flex items-center justify-between py-3">
          <div className="flex items-center gap-6">
            <Link href="/admin" className="font-semibold">
              4th Wall <span className="font-mono text-xs text-ink/50">admin</span>
            </Link>
            <nav className="flex items-center gap-4 text-sm">
              {NAV.map((n) => (
                <Link key={n.href} href={n.href} className="text-ink/70 hover:text-accent">
                  {n.label}
                </Link>
              ))}
            </nav>
          </div>
          <div className="flex items-center gap-4 text-sm">
            <Link href="/" target="_blank" className="text-ink/50 hover:text-accent">
              View site ↗
            </Link>
            <form action={signOut}>
              <button className="font-mono text-xs uppercase tracking-widest text-ink/60 hover:text-accent">
                Sign out
              </button>
            </form>
          </div>
        </div>
      </header>
      <main className="container-page py-10">{children}</main>
    </div>
  );
}
