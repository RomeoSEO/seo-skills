# RomeoSEO SEO, AEO, LLM SEO and GEO skills

50 free skills for AI agents. Each one is a Markdown file that teaches your agent to do one search job properly: audit a site, find keywords worth chasing, write a brief, check a draft, fix schema, get cited and recommended in ChatGPT, Google AI Overviews and Perplexity (AEO, LLM SEO, GEO), and do parasite SEO on LinkedIn, YouTube and Reddit without getting banned.

Have a [DataForSEO](https://dataforseo.com) account? The AEO skills include the exact API calls, typical costs and a spending cap, and `dataforseo-ai-tracker` runs AI visibility tracking at scale. Every skill still works without it.

They work in Claude Code, Codex, and any agent that loads `SKILL.md` folders. You can also attach a single file to ChatGPT or Claude.

Browse them, read each file before you install it, and copy one-line installs at **[romeoseo.com/skills](https://romeoseo.com/skills)**.

> Romeo is a grey cat who runs a surprisingly competent SEO department. Before RomeoSEO was a product, these files were the workflow behind it.

## Install

**Everything, with git**

```bash
git clone --depth 1 https://github.com/RomeoSEO/seo-skills.git && bash seo-skills/install.sh
```

**Claude Code plugin**

```
/plugin marketplace add RomeoSEO/seo-skills
/plugin install romeo-seo@romeoseo
```

**Without git**

```bash
curl -fsSL https://romeoseo.com/skills/install.sh | bash
```

**One skill only**

```bash
curl -fsSL --create-dirs -o ~/.claude/skills/technical-seo-audit/SKILL.md https://romeoseo.com/skills/technical-seo-audit/SKILL.md
```

`install.sh` puts the skills in `~/.claude/skills` by default. Other places:

| Flag | Installs to |
| --- | --- |
| `--codex` | `~/.codex/skills` |
| `--agents` | `~/.agents/skills` |
| `--project` | `./.claude/skills` (this project only) |
| `--dir PATH` | anywhere |
| `--skill SLUG` | just that skill (repeat for more) |
| `--uninstall` | removes the RomeoSEO skills again |

It never touches a folder it didn't install. To update, run `git pull` and `install.sh` again.

## Use

Open your agent in any project and say what you want:

```
Use the seo-start-here skill. My site is example.com.
```

Not sure where to begin? That's what `seo-start-here` is for. It asks up to five questions and tells you which skills to run, in what order. In Claude Code you can also type `/seo-start-here`.

## The skills

### Start

Work out where you stand and what to do first.

| Skill | What it does |
| --- | --- |
| [`seo-start-here`](skills/seo-start-here/SKILL.md) | Answer a few questions and get the right skills, in the right order, for your site and situation. |
| [`site-content-inventory`](skills/site-content-inventory/SKILL.md) | Build a shared map of your pages, keywords, intent, performance, and active tasks so the next job starts with context. |
| [`seo-strategy-plan`](skills/seo-strategy-plan/SKILL.md) | Turn your business, resources, and competitors into a realistic 90-day SEO plan, including what to skip for now. |

### Research

Find what's worth writing, and how it should look.

| Skill | What it does |
| --- | --- |
| [`seo-opportunity-research`](skills/seo-opportunity-research/SKILL.md) | Find keywords worth targeting, check competitors, and decide whether to create a page or improve one you already have. |
| [`topic-cluster-map`](skills/topic-cluster-map/SKILL.md) | Group keywords by the search results they share, not by how similar they sound, and turn the groups into a page plan. |
| [`search-intent-match`](skills/search-intent-match/SKILL.md) | Check whether your page is the kind of page Google actually ranks for its query, and what to change if it isn't. |

### Fix

Audits that find what's broken and say what to change.

| Skill | What it does |
| --- | --- |
| [`technical-seo-audit`](skills/technical-seo-audit/SKILL.md) | Check whether search engines can reach, render, and index your pages, pick the right URLs, and load them fast. |
| [`on-page-seo-review`](skills/on-page-seo-review/SKILL.md) | Review one page against the query it should rank for: title, headings, answer, gaps, links, media, and snippet. |
| [`seo-performance-audit`](skills/seo-performance-audit/SKILL.md) | Work out what rose, dropped, or stalled in organic search, then turn meaningful changes into a short list of actions. |
| [`keyword-cannibalization-check`](skills/keyword-cannibalization-check/SKILL.md) | Find pages that compete with each other for the same search and decide whether to merge, differentiate, or leave them. |
| [`internal-linking-plan`](skills/internal-linking-plan/SKILL.md) | Find orphan and buried pages, weak anchors, and broken internal links, then get the exact links to add. |
| [`schema-markup`](skills/schema-markup/SKILL.md) | Find, validate, and write JSON-LD structured data that matches the page and is eligible for rich results. |
| [`xml-sitemap-check`](skills/xml-sitemap-check/SKILL.md) | Check that your sitemaps list exactly the pages you want indexed, with honest dates and no dead or redirected URLs. |
| [`hreflang-international`](skills/hreflang-international/SKILL.md) | Check language and region targeting so each market sees the right version of your page. |
| [`image-seo`](skills/image-seo/SKILL.md) | Fix alt text, formats, sizes, and lazy loading so images help rankings and page speed instead of hurting them. |
| [`site-migration-check`](skills/site-migration-check/SKILL.md) | Move domains, URLs, or platforms without losing traffic: benchmark first, map every redirect, and check after launch. |
| [`seo-change-monitor`](skills/seo-change-monitor/SKILL.md) | Snapshot the SEO basics of your key pages, then compare after every deploy to catch noindex tags and broken canonicals early. |
| [`backlink-profile-review`](skills/backlink-profile-review/SKILL.md) | Read your link profile honestly: what's healthy, what's risky, which lost links to reclaim, and where to earn new ones. |

### Content

Briefs, drafts, rewrites, and the checks before anything ships.

| Skill | What it does |
| --- | --- |
| [`seo-content-brief`](skills/seo-content-brief/SKILL.md) | Turn a research finding into a precise brief, with search intent, structure, product facts, and the right internal links. |
| [`seo-blog-writer`](skills/seo-blog-writer/SKILL.md) | Write a useful first draft from an approved brief, with clear answers, specific examples, and your brand voice. |
| [`comparison-page-writer`](skills/comparison-page-writer/SKILL.md) | Write "best X", "X vs Y", and "X alternatives" pages that give a straight verdict and stay honest about every option. |
| [`landing-page-writer`](skills/landing-page-writer/SKILL.md) | Build or fill out a product or feature landing page from your own proof, pricing and real screenshots, with every claim sourced. |
| [`seo-content-qa`](skills/seo-content-qa/SKILL.md) | Check intent, usefulness, human voice, facts, links, and publishing readiness before a draft leaves your desk. |
| [`title-meta-ctr`](skills/title-meta-ctr/SKILL.md) | Find pages that get seen but not clicked, then rewrite their titles and descriptions with a safe way to test the change. |
| [`eeat-trust-review`](skills/eeat-trust-review/SKILL.md) | See your page and site the way a quality rater would: who wrote it, why trust it, and what proof is missing. |
| [`programmatic-seo-plan`](skills/programmatic-seo-plan/SKILL.md) | Plan template pages at scale that each earn their place, with quality gates that keep thin pages out of the index. |

### AEO, LLM SEO, GEO

Answer engine optimization: get cited and recommended in ChatGPT, AI Overviews, AI Mode, Perplexity, Gemini and Copilot.

| Skill | What it does |
| --- | --- |
| [`ai-search-visibility`](skills/ai-search-visibility/SKILL.md) | Find out whether ChatGPT, Google AI Overviews, Perplexity, and Copilot mention you, and what to change so they do. |
| [`ai-prompt-research`](skills/ai-prompt-research/SKILL.md) | Find the questions your buyers actually ask ChatGPT and AI search, with demand estimates, so you track and write for the right prompts. |
| [`ai-brand-facts`](skills/ai-brand-facts/SKILL.md) | Find every wrong or outdated thing AI engines say about your business, trace it to its source, and fix it there. |
| [`chatgpt-business-profile`](skills/chatgpt-business-profile/SKILL.md) | Get your business ready to claim its profile in ChatGPT: check what ChatGPT says today, fix the site, then write the profile and Business Agent test questions. |
| [`ai-citable-pages`](skills/ai-citable-pages/SKILL.md) | Rewrite a page section by section so AI engines can quote accurate, self-contained answers that name you. |
| [`query-fan-out-coverage`](skills/query-fan-out-coverage/SKILL.md) | Map the follow-up searches AI engines run behind a question, and make sure your site has a good answer for each. |
| [`google-ai-overviews-audit`](skills/google-ai-overviews-audit/SKILL.md) | See what AI Overviews and AI Mode are doing to your Google traffic, page by page, using Search Console's new AI report. |
| [`best-of-list-inclusion`](skills/best-of-list-inclusion/SKILL.md) | Get a fair, accurate place on the "best X" and comparison articles that AI engines quote when buyers ask for recommendations. |
| [`reviews-for-ai-answers`](skills/reviews-for-ai-answers/SKILL.md) | Build an honest review presence on the platforms AI engines check before recommending a business in your category. |
| [`youtube-for-ai-answers`](skills/youtube-for-ai-answers/SKILL.md) | Make videos that AI engines cite: which questions to answer on video, and how to title, caption and embed them. |
| [`local-ai-visibility`](skills/local-ai-visibility/SKILL.md) | Get recommended when people ask ChatGPT, Gemini or Google's AI for a business like yours nearby. |
| [`ai-shopping-visibility`](skills/ai-shopping-visibility/SKILL.md) | Get your products into ChatGPT shopping, Google AI Mode and Gemini results with accurate prices and details. |
| [`ai-traffic-analytics`](skills/ai-traffic-analytics/SKILL.md) | Measure the visits, signups and sales AI search sends you, using free tools you already have. |
| [`dataforseo-ai-tracker`](skills/dataforseo-ai-tracker/SKILL.md) | Track your brand across ChatGPT, Gemini, Claude, Perplexity, AI Overviews and AI Mode at scale with the DataForSEO API, with cost caps built in. |
| [`ai-agent-readiness`](skills/ai-agent-readiness/SKILL.md) | Make your site readable and usable for AI crawlers and browsing agents: bot rules, llms.txt, Markdown, and clean HTML. |

### Parasite SEO

Rank and get cited on platforms bigger than your site, without breaking their rules or Google's.

| Skill | What it does |
| --- | --- |
| [`parasite-seo-plan`](skills/parasite-seo-plan/SKILL.md) | Pick the big platforms worth publishing on for your searches, based on where they already rank and get cited, and skip the ones that get you banned. |
| [`page-to-social-posts`](skills/page-to-social-posts/SKILL.md) | Turn one page into genuinely different, platform-native posts for your own accounts, with a human approving each one. |
| [`reddit-quora-answers`](skills/reddit-quora-answers/SKILL.md) | Earn mentions in Reddit and Quora threads that already rank or get cited, by answering well and disclosing who you are. |
| [`linkedin-for-ai-search`](skills/linkedin-for-ai-search/SKILL.md) | Write LinkedIn articles and posts that AI engines cite, from a real person's profile, now that LinkedIn ranks less in Google. |
| [`sponsored-placement-vetting`](skills/sponsored-placement-vetting/SKILL.md) | Check a sponsored post, guest post, syndication deal or press release before you pay, so it doesn't get the host or you penalized. |

### Local & shop

For businesses with a map pin or a checkout.

| Skill | What it does |
| --- | --- |
| [`local-seo-audit`](skills/local-seo-audit/SKILL.md) | Audit your Google Business Profile, reviews, citations, and location pages so you show up in the map pack. |
| [`ecommerce-seo-audit`](skills/ecommerce-seo-audit/SKILL.md) | Audit category and product pages, filters, product data, and stock handling for an online shop. |

### Publish

Get approved work into your CMS and measure what happens after it goes live.

| Skill | What it does |
| --- | --- |
| [`cms-publishing-adapter`](skills/cms-publishing-adapter/SKILL.md) | Turn content that passed QA into a CMS draft, document, or static-site package, with field checks and readback. |
| [`posthog-change-impact`](skills/posthog-change-impact/SKILL.md) | Create a PostHog report for each website change and review whether it improved the outcome your business cares about. |

## Where to start

- **My site is new.** `technical-seo-audit` → `seo-strategy-plan` → `seo-opportunity-research` → `comparison-page-writer` → `seo-content-brief` → `seo-blog-writer` → `seo-content-qa`
- **My traffic dropped.** `seo-performance-audit` → `technical-seo-audit` → `site-migration-check` → `search-intent-match` → `keyword-cannibalization-check` → `seo-change-monitor`
- **I want more traffic.** `site-content-inventory` → `seo-performance-audit` → `title-meta-ctr` → `internal-linking-plan` → `seo-opportunity-research` → `topic-cluster-map` → `seo-content-brief`
- **I want to show up in ChatGPT.** `ai-search-visibility` → `ai-prompt-research` → `ai-agent-readiness` → `ai-brand-facts` → `ai-citable-pages` → `best-of-list-inclusion` → `ai-traffic-analytics`
- **I want to rank on bigger sites.** `parasite-seo-plan` → `linkedin-for-ai-search` → `reddit-quora-answers` → `page-to-social-posts` → `sponsored-placement-vetting`
- **I'm moving or redesigning.** `seo-change-monitor` → `site-migration-check` → `xml-sitemap-check` → `posthog-change-impact`
- **I run a local business.** `local-seo-audit` → `local-ai-visibility` → `reviews-for-ai-answers` → `schema-markup` → `on-page-seo-review`
- **I run an online shop.** `ecommerce-seo-audit` → `ai-shopping-visibility` → `technical-seo-audit` → `schema-markup` → `image-seo`
- **I have a draft to check.** `seo-content-qa` → `search-intent-match` → `cms-publishing-adapter` → `on-page-seo-review`

## How they're built

The same rules run through the whole library, so the skills chain together and you always know what you're getting back:

- **Evidence on every finding.** Each one says whether it was `seen` directly, reported by a `tool`, or `inferred`, and how confident the agent is.
- **Priorities you can act on.** The audits share one scale: `Fix now`, `Fix next`, `Worth doing`, and `Leave it`. That last one matters: knowing what to ignore is half of SEO.
- **No invented numbers.** If there's no data for search volume, rankings, or traffic, the skill says "not checked" and names what would verify it.
- **Read-only by default.** No skill changes your site, CMS, robots.txt, or redirects without explicit permission for that specific change.
- **Works without paid tools.** Every skill has a "No tools?" path that uses a browser, view-source, or free exports such as Search Console.
- **Plain English.** Findings are written for the founder, with the jargon in brackets.
- **Current advice.** No keyword density, no LSI keywords, no FID, and no chasing rich results Google retired.

## Want it done for you?

[RomeoSEO](https://romeoseo.com) runs this kind of work every day: it audits your site, finds what's worth doing, writes the article or the fix, and sends it to your site. You can also ask it anything in Chat with Romeo.

## License

MIT. Use them, change them, ship them. A link back to [romeoseo.com/skills](https://romeoseo.com/skills) is appreciated, not required.

Version 3.0.0
