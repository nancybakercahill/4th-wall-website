// Resolve a Supabase Storage path in the public `media` bucket to a full URL.
// Returns null when there's no path so callers can render a placeholder.
export function mediaUrl(path: string | null | undefined): string | null {
  if (!path) return null;
  const base = process.env.NEXT_PUBLIC_SUPABASE_URL;
  if (!base) return null;
  return `${base}/storage/v1/object/public/media/${path}`;
}
