# Antonn Esquivel

**Staff Front-End Engineer  ·  Design Systems & Web Platform**

Toronto, Ontario, Canada

🌐 [tonn.esq](https://tonn.esq)<br>
✉️ [hello@tonn.esq](mailto:hello@tonn.esq)<br>
📄 [View résumé PDF](https://github.com/ton03/cv/blob/main/resume.pdf)<br>
💼 [LinkedIn](https://linkedin.com/in/antonn-esquivel)

---

## Summary

Staff front-end engineer focused on design systems and web platforms. Owns BlockUI Web, Block's web design system for Square and Cash App, and Market Web, Square's React design system, across development, migration, adoption, and support. Builds AI-assisted workflows that delegate repetitive work while engineers and designers retain ownership of APIs, accessibility, visual quality, and judgment. Works closely with designers to turn intent into consistent interfaces.

## Currently

Owns BlockUI Web, Block's web design system for Square and Cash App, and Market Web, Square's React design system, across development, migration, adoption, and support, in close partnership with designers. Builds AI-assisted workflows for Square Web Platform, delegating repetitive work while engineers and designers own API decisions, accessibility, visual quality, and judgment.

## Skills

**Languages:** TypeScript, JavaScript, Python

**Frameworks & Libraries:** React, Next.js, Remix, React Router, shadcn/ui, Base UI, Stencil, D3, Web Components, Ember

**WordPress:** PHP, client sites, custom themes

**Design Systems:** Component libraries, Icon systems, Design tokens, Theming, CSS architecture, Web Components, Headless primitives, Accessibility (WCAG, ARIA)

**AI-Assisted Workflows:** Agent skills and rules authoring, Claude Code, Codex, Amp, Cursor

**Testing:** Vitest, Playwright, Cypress, Storybook, Snapshot testing, Visual regression, React Testing Library

**Build & Infra:** Vite, Nx, Rollup, Webpack, ESLint, Stylelint, CI/CD, SSR

**Design:** Figma, Photoshop, Illustrator, web, product, and graphic design, design-to-code with Claude

## Experience

### Staff Front-End Engineer  ·  Square ([Block](https://block.xyz))

Toronto, Canada  ·  Remote  ·  Oct 2021 – Present

- Own BlockUI Web, Block's web design system for Square and Cash App web products, across platform development, component delivery, adoption, and support, in close partnership with designers
- Own Market Web, Square's React design system and web platform, across migration, component development, adoption, and support
- Lead the migration from Ember and legacy Web Components to Market's React library, delegating repetitive conversion work to agents while engineers retain ownership of API decisions, edge cases, accessibility, and visual quality
- Build a self-coordinating agent that opens migration PRs for web teams, assigns reviewers, and improves from code and visual review feedback
- Standardize web snapshot testing across Block products, dramatically increasing coverage while reducing total infrastructure and storage costs from roughly $20k per month to under $2k
- Author some of the library's most complex components, separating behavior from composition so logic and UI layers can evolve independently
- Set engineering and review standards for Market adoption, aligning API design, accessibility, semantics, and visual fidelity across contributions from multiple web teams

> TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint

### Senior Front-End Engineer  ·  Aspire ([aspireiq.com](https://aspireiq.com))

Toronto, Canada  ·  Remote  ·  Sep 2019 – Oct 2021

- Core engineer on the component library behind Aspire's influencer-marketing platform
- Built metrics, data-visualization, and other product features across the influencer-marketing platform

> TypeScript, React, SASS, D3, Python

### Front-End Engineer  ·  Iress ([iress.com](https://iress.com))

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
