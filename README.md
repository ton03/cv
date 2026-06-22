# Antonn Esquivel

**Staff Front-End Engineer · Design Systems & Web Platform**

Toronto, Ontario, Canada · [esquivel.antonn@gmail.com](mailto:esquivel.antonn@gmail.com) · [LinkedIn](https://linkedin.com/in/antonn-esquivel) · [GitHub](https://github.com/ton03)

📄 [View PDF](https://ton03.github.io/cv/) · [Download PDF](https://ton03.github.io/cv/resume.pdf)

---

## Summary

Front-end engineer with 12 years of experience, most of it on design systems: the shared component libraries product teams rely on. Builds the platform, then drives the adoption work that makes it useful across real products. Leads development of Market, Square's React component library, and the company-wide migration onto it. Drives UI and UX consistency across products, with close attention to design fidelity, semantics, accessibility, and interaction detail.

## Currently

Making agents useful in production design system work: automating repetitive migrations while engineers own product judgment, APIs, accessibility, and quality.

## Skills

**Languages:** TypeScript, JavaScript, Python

**Frameworks & Libraries:** React, React Router, Stencil

**Design Systems:** Component libraries, Design tokens, Theming, CSS architecture, Web Components, Headless primitives, Accessibility (WCAG, ARIA)

**AI-Assisted Workflows:** Agent skills & rules authoring · Claude Code, Codex, Amp, Cursor

**Testing:** Vitest, Playwright, Cypress, Storybook, Visual regression, React Testing Library

**Build & Infra:** Nx, Vite, ESLint, Stylelint, CI/CD, SSR

**Design:** Figma, Photoshop, Illustrator · Web, product & graphic design · Design-to-code with Claude

## Experience

### Staff Front-End Engineer · Block (Square)

Toronto, Canada · Remote · Oct 2021 – Present

- Lead Market, Square's React design system, shaping component APIs, accessibility, tokens, and adoption patterns for product teams across Square
- Drive the monorepo-wide migration of Square web surfaces onto Market, reducing thousands of legacy-importing files incrementally and without breaking the products that depend on it
- Designed and built the migration automation system the team runs on: a migration index, component parity tracker, and repo-wide automated checks that gate every change. Agents handle the mechanical conversions while engineers own the API and edge-case calls, turning a years-long migration into a repeatable system
- Built a self-hosted visual-regression system, favored over a ~$100K/yr SaaS subscription, that scales with higher PR volume from migration automation at a fraction of the cost
- Set the implementation bar for design fidelity, semantics, accessibility, and interaction detail, steering other engineers' contributions and partnering with design to carry their intent into finished product states
- Authored the library's most complex components (selects, filters, tables), separating behavior from composition so logic and UI layers can evolve independently
- Rebuilt the icon system end-to-end, from Figma to tree-shakable React, migrated every legacy icon to it, and blocked new legacy imports with automated checks

> TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint

### Senior Front-End Engineer · Aspire (aspireiq.com)

Toronto, Canada · Remote · Sep 2019 – Oct 2021

- Core engineer on the component library behind Aspire's influencer-marketing platform
- Built metrics, data-visualization, and other product features across the influencer-marketing platform

> TypeScript, React, SASS, D3, Python

### Front-End Engineer · Iress (iress.com)

Sydney & Melbourne, Australia · Aug 2016 – Aug 2019

- One of the founding engineers on Iress's shared component library for wealth-management products, setting patterns other teams reused for years
- Overhauled product UIs to bring several wealth-management products onto the new library

> TypeScript, React, SASS, UI Design

### Earlier

#### iOS Developer · ZipMatch

Manila, Philippines · 2015 – 2016

- Built an iOS real-estate app with virtual-reality property tours

#### Software Engineer · Nokia Networks

Manila, Philippines · 2013 – 2015

- Built internal web tooling, with shell and Python scripts for build automation and continuous integration

> Swift, iOS, JavaScript, Python, CI/CD

## Education

**BS Computer Science** · De La Salle University, Manila, Philippines · 2013

---

<details>
<summary>Development notes</summary>

### Stack

- **[Typst](https://typst.app)**: Modern typesetting for clean, ATS-friendly PDFs
- **GitHub Actions**: Auto-compiles on push
- **GitHub Pages**: Hosted from `docs/`

### Local development

Edit `src/resume.typ` and compile locally:

```bash
typst compile --pdf-standard a-2b --font-path fonts --ignore-system-fonts src/resume.typ docs/resume.pdf
```

Or just push, and the GitHub Action will compile and commit the PDF automatically.

### Structure

```
src/resume.typ          ← resume source (source of truth)
README.md               ← markdown version (kept in sync)
docs/index.html         ← landing page (GitHub Pages)
docs/resume.pdf         ← compiled output
.github/workflows/      ← auto-build on push
```

</details>
