# Handoff — Al Khaja Medical Center

Niche: dentist
Primary language: English
Old site: https://alkhajamedicalcenter.ae/ (live, real HTTPS — the CSV's "no HTTPS" flag is stale; HTTP redirects cleanly to HTTPS and the site loads fine)
New demo (local): demos-alkhaja/index.html
GitHub repo: https://github.com/Aymean/alkhaja-demo
Intended live URL: https://alkhaja.zaylogear.com/
Real WhatsApp: +971509101739
Real phone: +97126720048
Real email: info@alkhajamedicalcenter.ae
Socials: Facebook https://www.facebook.com/AKMC.ORTHODONTIST | Instagram https://www.instagram.com/alkhajamedicalcenterllc/ (448 followers, 263 posts) | LinkedIn https://www.linkedin.com/company/101398962 | TikTok https://www.tiktok.com/@alkhajadentalcenter

Key real facts used:
- Independent, single-location dental clinic (not a hospital chain — verified via web search per the "skip corporate chains" rule; ruled out ahead of it in CSV priority order: Aster Clinic, Magrabi Dental, Miral Dental Clinics [publicly traded, TADAWUL: 9604], Dynamic Clinic, Andalusia Dental Centers, and this session additionally ruled out "The Clinics" Riyadh and Dentalia Clinics Jeddah as large multi-specialty/multi-division healthcare groups before landing on Al Khaja). Started 2016 in Abu Dhabi, relocated to its current Hamdan Bin Mohammed Street address (Al Seeri Building, next to ADIB, behind Al Mariah Mall) in 2020.
- 4.9★ rating — CSV showed 766 reviews, one independent aggregator showed 754, another showed 628; used the safely-corroborated floor "600+ Google reviews" since all three sources agree on at least that many.
- 6 real specialist dentists, each with a real photo and individual bio subpage on their own site: Dr. Titty Mathew (Medical Director, Specialist Periodontist, MDS Periodontics, DOH Implant Privilege, 25 yrs), Dr. Suma Aleyamma Mathai (Cosmetic Dentist, Digital Smile Design certified, 25 yrs), Dr. Pratik Kumar (Specialist Orthodontist, MDS, Taiwan-certified mini-screw implant technique, 14 yrs), Dr. Shelly Jain (Specialist Orthodontist, MDS, 7 yrs), Dr. Geethi Puthiyatath (General Dentist, BDS, 10 yrs), Dr. Fathimath Shaniba Junaid (General Dentist, BDS, 10 yrs). Their individually-stated years of experience sum to 91 — displayed as the real, derived "90+ years combined experience" stat.
- 8 real insurance partners with direct billing, scraped from their own site: NAS/Neuron, National Life, SAICO, Sukoon, Daman, Thiqa, FMC, MSH International.
- Real operational detail: HEPA-filtered treatment rooms (their own stated infection-control feature), open daily 9:00 AM–9:00 PM.
- 16 real services scraped verbatim from their own 8 service-category pages (Orthodontics, Implants, Periodontics, Cosmetic, Pediatric, General, Prosthodontics, Endodontics, Diagnostics, Oral Surgery) — no invented treatments.

New sections added vs old site:
- A real WhatsApp-integrated booking flow (old site has zero WhatsApp integration anywhere — only a `tel:` click-to-call link and a generic contact form). Verified end-to-end in QA: filling the form and submitting opens a real `wa.me` link to the clinic's real number with the booking details pre-filled, plus an on-page confirmation.
- Full doctor bios (qualifications, years of experience, languages spoken) surfaced directly in one team grid — old site only shows name + one-line role on the overview grid; the real bio detail is hidden behind 6 separate subpages nobody would browse to individually.
- A real "90+ years combined experience" stat, computed from the doctors' own individually-published years of practice — old site never aggregates this.
- A dedicated insurance-partner trust section with all 8 logos — old site buries these as a small strip at the bottom of one subpage.
- A 4.9★ / 600+ Google reviews trust badge shown prominently (hero badge + dedicated trust panel) — old site never displays its own Google rating anywhere on-site.
- Bilingual EN/AR toggle with a footer accessibility zoom control — old site is English-only with no language option.
- A persistent mobile bottom CTA bar (Call / WhatsApp / Book) and floating WhatsApp button — old site relies solely on a `tel:` link.
- Deliberately did **not** fabricate a review-text carousel — old site has no reviewer names/quotes published anywhere on its own domain, so only the real aggregate rating/count is shown (no invented reviewer names), consistent with the no-fabrication rule.

Notes for next steps:
- QA: full Playwright pass at 375/768/1440px, both languages — zero horizontal overflow, zero broken images (confirmed with a definitive `img.complete` wait, not just a snapshot), zero lang-en/lang-ar leaks in either direction, all internal anchor links resolve, WhatsApp booking flow tested end-to-end (real number, correct prefilled message, on-page confirmation shown).
- One known non-issue: the Google Maps embed iframe renders blank in this sandboxed build environment because Google redirects the embed request through an EU/France consent wall here (confirmed via curl — the request resolves fine with 200 once the redirect is followed, and independently found the correct real listing, gcid:dental_clinic). This is the same embed pattern already used successfully in previously-deployed demos (e.g. Central Clinic) and is expected to render normally for real visitors, particularly from the Gulf region.
