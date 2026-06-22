# 4th Wall — Nancy's Cheat Sheet

Everything you need to run the site yourself, from any computer (PC or Mac).
No code required — just a web browser.

---

## Signing in

1. Go to your admin: **https://4thwallapp.org/admin**
   *(While we're still building, it's http://localhost:3000/admin on a computer running the site.)*
2. Enter your **email + password**.
3. You're in. Use the top menu: **Projects · Home & Hero · Pages**.
4. When done, click **Sign out** (top right) — or just close the tab.

> Tip: save your login in your browser / password manager on both the PC and
> the Mac so it's one click every time.

---

## The golden rule: Draft vs. Published

Everything has a **Status**:

- **Draft** = hidden from the public, but you can still see and edit it.
- **Published** = live on the website for everyone.

That toggle IS how you publish and unpublish. There's no separate "go live"
button and nothing to rebuild — flip it and Save.

- **Put something live:** open it → Status → **Published** → Save.
- **Take something down:** open it → Status → **Draft** → Save.

---

## Add a new project (e.g. FREE)

1. **Projects → New project**.
2. Fill in **Title**, **Category**, **Year**, Subtitle, Location, Description,
   Credits. (Latitude/Longitude only if it's tied to a specific place.)
3. **Cover image:** click the upload box and pick a photo straight off your
   computer. It uploads to the cloud automatically.
4. Leave **Status = Draft** while you're still working on it.
5. Click **Save project.**
6. After saving, scroll down to **add gallery images or videos** (same
   upload-from-your-computer flow).
7. When you're ready (e.g. launch day): set **Status → Published → Save.**

---

## Add / change images

- Use the **upload boxes inside the admin** — they pull files right off your
  laptop and store them in the cloud, so they show up everywhere instantly.
- You do **NOT** need to put images in any "public folder." (That folder is only
  for permanent design pieces like the CENTO hero, which Claude handles.)
- To remove a gallery image: open the project and click delete next to it.

---

## Edit the homepage & text pages

- **Home & Hero:** the big headline, intro line, and the category descriptions.
- **Pages:** About, How To Use, etc.
- Edit the text, click **Save.** Changes appear on the live site right away.

---

## Things to be careful about

- **Deleting is permanent.** Removing a project or image can't be undone. If you
  just want it off the public site, set it to **Draft** instead of deleting.
- **Your edits save to the cloud,** so they're the same on every device — no
  copying files between the PC and Mac.
- **The CENTO hero image** is a special design asset. If it needs swapping
  (e.g. higher resolution), send the file to Claude rather than replacing it
  yourself.

---

## Going live & canceling Wix — do this in order

⚠️ **Do NOT cancel Wix until the new site is fully live and verified.** Two
reasons:

1. The domain **4thwallapp.org** may be registered or managed through Wix. If it
   is, canceling could break the web address (or lose it). We need to move/point
   the domain *first*.
2. You want zero downtime — the old site should stay up until the new one
   answers at the real address.

Safe launch sequence (Claude does the technical parts):
1. Deploy the new site to its host (Vercel).
2. Point **4thwallapp.org** at the new site (DNS), keeping Wix live meanwhile.
3. Confirm the new site loads at **4thwallapp.org** and **/admin** works.
4. Click through everything once — projects, images, About, How To Use.
5. **Only then** cancel the Wix subscription.

When you're ready to launch, tell Claude "let's go live" and walk through these
together.
