import React from 'react';

// Lightweight, dependency-free rich text for editor-entered content.
// Supports Markdown links [label](https://…) AND bare https URLs. Only http(s)
// links are produced, so editors can't inject unsafe hrefs. Links inherit the
// surrounding text colour (works on light and dark pages) and open in a new tab.
// Line breaks are preserved by the caller's `whitespace-pre-wrap`.

const MD_LINK = /\[([^\]]+)\]\((https?:\/\/[^\s)]+)\)/g;
const BARE_URL = /(https?:\/\/[^\s)\]]+)/g;
const LINK_CLASS =
  'font-medium underline underline-offset-2 transition-opacity hover:opacity-70 break-words';

function anchor(label: string, url: string, key: number): React.ReactNode {
  return (
    <a key={key} href={url} target="_blank" rel="noopener noreferrer" className={LINK_CLASS}>
      {label}
    </a>
  );
}

// Autolink bare URLs inside a plain-text segment, trimming trailing punctuation.
function linkifyBare(text: string, nextKey: () => number, out: React.ReactNode[]) {
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
    out.push(anchor(url, url, nextKey()));
    if (trailing) out.push(trailing);
    last = m.index + m[0].length;
  }
  if (last < text.length) out.push(text.slice(last));
}

export function renderRichText(text: string): React.ReactNode[] {
  const out: React.ReactNode[] = [];
  let key = 0;
  const nextKey = () => key++;
  let last = 0;
  let m: RegExpExecArray | null;

  MD_LINK.lastIndex = 0;
  while ((m = MD_LINK.exec(text)) !== null) {
    if (m.index > last) linkifyBare(text.slice(last, m.index), nextKey, out);
    out.push(anchor(m[1], m[2], nextKey()));
    last = m.index + m[0].length;
  }
  if (last < text.length) linkifyBare(text.slice(last), nextKey, out);
  return out;
}
