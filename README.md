# Antonn Esquivel

**Staff Front-End Engineer  ·  Design Systems & Web Platform**

Toronto, Ontario, Canada  ·  [esquivel.antonn@gmail.com](mailto:esquivel.antonn@gmail.com)  ·  [LinkedIn](https://linkedin.com/in/antonn-esquivel)  ·  [GitHub](https://github.com/ton03)

🌐 [tonn.esq](https://tonn.esq)  ·  📄 [View résumé PDF](https://github.com/ton03/cv/blob/main/resume.pdf)  ·  💼 [LinkedIn](https://linkedin.com/in/antonn-esquivel)

---

## Summary

Staff front-end engineer focused on design systems and web platforms. Owns Market Web, Square's React design system, across migration, component development, adoption, and support. Builds AI-assisted workflows that delegate repetitive implementation and coordination to agents while engineers and designers retain ownership of APIs, accessibility, visual quality, and product judgment. Works closely with designers to turn intent into consistent, high-fidelity interfaces.

## Currently

Builds BlockUI Web, the web side of Block's shared design system for Square and Cash App web products, in close partnership with designers. Builds AI-assisted workflows for Square Web Platform: agents handle repetitive migration and coordination work while engineers and designers own API decisions, accessibility, visual quality, and product judgment.

## Skills

**Languages:** TypeScript, JavaScript, Python

**Frameworks & Libraries:** React, Next.js, Remix, React Router, shadcn/ui, Base UI, Stencil, D3, Web Components, Ember

**Design Systems:** Component libraries, Icon systems, Design tokens, Theming, CSS architecture, Web Components, Headless primitives, Accessibility (WCAG, ARIA)

**AI-Assisted Workflows:** Agent skills and rules authoring, Claude Code, Codex, Amp, Cursor

**Testing:** Vitest, Playwright, Cypress, Storybook, Snapshot testing, Visual regression, React Testing Library

**Build & Infra:** Vite, Nx, Rollup, Webpack, ESLint, Stylelint, CI/CD, SSR

**Design:** Figma, Photoshop, Illustrator, web, product, and graphic design, design-to-code with Claude

## Experience

### Staff Front-End Engineer  ·  Square (Block)

Toronto, Canada  ·  Remote  ·  Oct 2021 – Present

- Build BlockUI Web, the web side of Block's shared design system for Square and Cash App web products, in close partnership with designers
- Own Market Web, Square's React design system and web platform, across migration, component development, adoption, and support
- Lead the migration from Ember and legacy Web Components to Market's React library, delegating repetitive conversion work to agents while engineers retain ownership of API decisions, edge cases, accessibility, and visual quality
- Build a self-coordinating agent that opens migration PRs for web teams, assigns reviewers, and improves from code and visual review feedback
- Standardize web snapshot testing across Block products, dramatically increasing coverage while reducing total infrastructure and storage costs from roughly $20k per month to under $2k
- Authored the library's most complex components (selects, filters, tables), separating behavior from composition so logic and UI layers can evolve independently
- Set engineering and review standards for Market adoption, aligning API design, accessibility, semantics, and visual fidelity across contributions from multiple web teams

> TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint

### Senior Front-End Engineer  ·  Aspire (aspireiq.com)

Toronto, Canada  ·  Remote  ·  Sep 2019 – Oct 2021

- Core engineer on the component library behind Aspire's influencer-marketing platform
- Built metrics, data-visualization, and other product features across the influencer-marketing platform

> TypeScript, React, SASS, D3, Python

### Front-End Engineer  ·  Iress (iress.com)

Sydney & Melbourne, Australia  ·  Aug 2016 – Aug 2019

- Contributed to Iress's shared component library from its early development, helping establish patterns other teams reused for years
- Overhauled product UIs to bring several wealth-management products onto the new library

> TypeScript, React, SASS, UI Design

### iOS Developer  ·  ZipMatch

Manila, Philippines  ·  2015 – 2016

- Built an iOS real-estate app with virtual-reality property tours

### Software Engineer  ·  Nokia Networks

Manila, Philippines  ·  2013 – 2015

- Built internal web tooling, with shell and Python scripts for build automation and continuous integration

> Swift, iOS, JavaScript, Python, CI/CD

## Education

**BS Computer Science**  ·  De La Salle University, Manila, Philippines  ·  2013

---

<details>
<summary>Development notes</summary>

### Stack

- **[Typst](https://typst.app)**: Modern typesetting for clean, ATS-friendly PDFs
- **GitHub Actions**: Auto-compiles `resume.pdf` on source changes

### Local development

Edit `resume.typ` and compile locally:

```bash
typst compile --pdf-standard a-2b --font-path fonts --ignore-system-fonts resume.typ resume.pdf
```

Or just push, and the GitHub Action will compile and commit the PDF automatically.

### Structure

```
resume.typ              ← resume source (source of truth)
README.md               ← markdown version (kept in sync)
resume.pdf              ← compiled output
.github/workflows/      ← auto-build on push
```

</details>
