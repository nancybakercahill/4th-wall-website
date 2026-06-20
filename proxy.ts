import { type NextRequest } from 'next/server';
import { updateSession } from './lib/supabase/middleware';

// Next 16 renamed the `middleware` convention to `proxy` (same purpose:
// intercept requests to refresh the Supabase session and gate /admin).
export async function proxy(request: NextRequest) {
  return await updateSession(request);
}

export const config = {
  matcher: [
    // Run on all routes except static assets and image files.
    '/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
  ],
};
