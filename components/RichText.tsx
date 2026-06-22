import React from 'react';

// Lightweight, dependency-free rich text for editor-entered content.
// Supports Markdown links [label](https://…) AND bare https URLs. Only http(s)
// links are produced, so editors can't inject unsafe hrefs. Links open in a new
// tab. Line breaks are preserved by the caller's `whitespace-pre-wrap`.
//
// Default link colour is brand acid-green (great on the magenta hero and the
// dark text pages). Pass `LINK_ON_LIGHT` on white backgrounds (project pages),
// where acid-green would be unreadable.

const MD_LINK = /\[([^\]]+)\]\((https?:\/\/[^\s)]+)\)/g;
const BARE_URL = /(https?:\/\/[^\s)\]]+)/g;

export const LINK_ACID =
  'font-medium text-acid underline underline-offset-2 transition-colors hover:text-acid/70 break-words';
export const LINK_ON_LIGHT =
  'font-medium text-ink underline underline-offset-2 decoration-acid transition-opacity hover:opacity-70 break-words';

function anchor(label: string, url: string, key: number, cls: string): React.ReactNode {
  return (
    <a key={key} href={url} target="_blank" rel="noopener noreferrer" className={cls}>
      {label}
    </a>
  );
}

// Autolink bare URLs inside a plain-text segment, trimming trailing punctuation.
function linkifyBare(text: string, nextKey: () => number, out: React.ReactNode[], cls: string) {
  let last = 0;
  let m: RegExpExecArray | null;
  BARE_URL.lastIndex = 0;
  while ((m = BARE_URL.exec(text)) !== null) {
    if (m.index > last) out.push(text.slice(last, m.index));
    let url = m[0];
    let trailing = '';
    const tm = url.match(/[.,);:!?]+$/);
    if (tm) {
      trailing = tm[0];
      url = url.slice(0, -trailing.length);
    }
    out.push(anchor(url, url, nextKey(), cls));
    if (trailing) out.push(trailing);
    last = m.index + m[0].length;
  }
  if (last < text.length) out.push(text.slice(last));
}

export function renderRichText(text: string, linkClassName: string = LINK_ACID): React.ReactNode[] {
  const out: React.ReactNode[] = [];
  let key = 0;
  const nextKey = () => key++;
  let last = 0;
  let m: RegExpExecArray | null;

  MD_LINK.lastIndex = 0;
  while ((m = MD_LINK.exec(text)) !== null) {
    if (m.index > last) linkifyBare(text.slice(last, m.index), nextKey, out, linkClassName);
    out.push(anchor(m[1], m[2], nextKey(), linkClassName));
    last = m.index + m[0].length;
  }
  if (last < text.length) linkifyBare(text.slice(last), nextKey, out, linkClassName);
  return out;
}
