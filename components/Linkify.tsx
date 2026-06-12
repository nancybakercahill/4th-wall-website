import React from 'react';

// Renders plain text, turning bare URLs into clickable links and preserving line breaks.
// Server component — no interactivity, safe for static rendering.
const URL_RE = /(https?:\/\/[^\s]+)/g;

export default function Linkify({ text, className }: { text: string; className?: string }) {
  const nodes: React.ReactNode[] = [];
  let last = 0;
  let m: RegExpExecArray | null;
  let i = 0;
  URL_RE.lastIndex = 0;
  while ((m = URL_RE.exec(text)) !== null) {
    if (m.index > last) nodes.push(text.slice(last, m.index));
    // Trim trailing punctuation that shouldn't be part of the link.
    let url = m[0];
    let trailing = '';
    const tm = url.match(/[.,);:]+$/);
    if (tm) {
      trailing = tm[0];
      url = url.slice(0, -trailing.length);
    }
    nodes.push(
      <a
        key={i++}
        href={url}
        target="_blank"
        rel="noopener noreferrer"
        className="text-accent underline underline-offset-2 hover:opacity-80 break-words"
      >
        {url}
      </a>
    );
    if (trailing) nodes.push(trailing);
    last = m.index + m[0].length;
  }
  if (last < text.length) nodes.push(text.slice(last));

  return <div className={className}>{nodes}</div>;
}
