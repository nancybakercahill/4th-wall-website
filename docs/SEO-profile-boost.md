# Nancy Baker Cahill — Profile-Boost Playbook (SEO / entity)

Two deliverables:
1. **Wikidata additions** — fill out your entity (biggest lever for a Google knowledge panel).
2. **Structured data for nancybakercahill.com** — paste-ready, cross-links to 4thwallapp.org.

Your canonical IDs (already real):
- Wikidata: **Q75452977**  → https://www.wikidata.org/wiki/Q75452977
- Wikipedia: https://en.wikipedia.org/wiki/Nancy_Baker_Cahill
- Whitney artist page: https://whitney.org/artists/21063
- Note: Wikidata already carries a **Google Knowledge Graph ID** — Google recognizes you. The goal now is to enrich the entity so it surfaces a knowledge panel.

---

## 1. Wikidata — statements to ADD to Q75452977

Open https://www.wikidata.org/wiki/Q75452977 → "edit" / "add statement". Log in (free account).
Type the property name, then the value; Wikidata auto-suggests the right linked item.

**High impact (do these first):**
| Property | Value |
|---|---|
| country of citizenship | United States |
| occupation | *add* **new media artist**, **contemporary artist**, **installation artist** (keep existing "artist") |
| official website | https://nancybakercahill.com |
| field of work | augmented reality, public art, new media art, virtual reality, drawing |
| residence | Los Angeles |
| Instagram username | `nancybakercahill` |
| LinkedIn personal profile ID | `nancy-baker-cahill-4773722b` |

**Medium impact:**
| Property | Value |
|---|---|
| image | A photo of you **you've uploaded to Wikimedia Commons under a free license** (CC BY-SA). This is what shows in the knowledge panel — worth doing. |
| movement | feminist art / land art (if you identify with these) |
| award received | LACMA Art + Technology Lab Grant (2022); COLA Master Artist Fellowship (2022) |
| notable work | CENTO, Corpus, Liberty Bell, Mushroom Cloud, Battlegrounds — *(each ideally has its own Wikidata item; can be created later)* |

**Optional (library authority IDs — search to see if you already have them):**
- VIAF ID, ULAN ID (Getty), ISNI, Library of Congress authority ID. Search viaf.org for "Nancy Baker Cahill"; if an ID exists, add it. These deepen the entity but aren't urgent.

> Tip: every statement should ideally have a **reference** (a source URL — your site, Whitney, a press piece). Referenced statements are trusted more.

---

## 2. nancybakercahill.com — structured data to add

Paste this into the **`<head>`** of nancybakercahill.com (or, on Wix: Settings → Custom Code →
add to Head, all pages). It declares the SAME person + links back to 4th Wall and your authority
profiles, so the two sites reinforce ONE entity. Uses your broader terms (immersive / experiential
/ new media).

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "WebSite",
      "@id": "https://nancybakercahill.com/#website",
      "url": "https://nancybakercahill.com",
      "name": "Nancy Baker Cahill",
      "inLanguage": "en",
      "publisher": { "@id": "https://nancybakercahill.com/#person" }
    },
    {
      "@type": "Person",
      "@id": "https://nancybakercahill.com/#person",
      "name": "Nancy Baker Cahill",
      "url": "https://nancybakercahill.com",
      "jobTitle": ["New Media Artist", "Augmented Reality Artist"],
      "nationality": "American",
      "description": "Nancy Baker Cahill is an American new media artist working in augmented and virtual reality, immersive and experiential art, video installation, and drawing. She is the founder and creator of the 4th Wall AR public art app.",
      "knowsAbout": [
        "New Media Art",
        "Augmented Reality Art",
        "Immersive Art",
        "Experiential Art",
        "Virtual Reality",
        "Public Art",
        "Participatory Public Art",
        "Drawing",
        "XR"
      ],
      "alumniOf": { "@type": "CollegeOrUniversity", "name": "Williams College" },
      "sameAs": [
        "https://4thwallapp.org",
        "https://www.wikidata.org/wiki/Q75452977",
        "https://en.wikipedia.org/wiki/Nancy_Baker_Cahill",
        "https://whitney.org/artists/21063",
        "https://www.instagram.com/nancybakercahill/",
        "https://www.linkedin.com/in/nancy-baker-cahill-4773722b/"
      ]
    }
  ]
}
</script>
```

On 4thwallapp.org the equivalent schema is already live (in `app/layout.tsx`) and its `sameAs`
should likewise list `https://nancybakercahill.com` — it does. The two sites now point at each other.

---

## 3. Quick wins checklist (consistency = entity strength)
- [ ] Use ONE signature line everywhere (galleries, museums, talks, press):
      **"Nancy Baker Cahill, augmented reality and new media artist."**
- [ ] Add the Wikidata statements above.
- [ ] Upload a free-licensed portrait to Wikimedia Commons → set as Wikidata image.
- [ ] Add the JSON-LD to nancybakercahill.com.
- [ ] When a Google knowledge panel appears for your name, **claim it** (Google verifies the subject).
- [ ] Wherever you have say over a bio link (press, museum pages), point it at 4thwallapp.org or
      nancybakercahill.com — those backlinks raise both sites.
