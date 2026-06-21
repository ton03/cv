# Antonn Esquivel

**Staff Front-End Engineer · Design Systems & Web Platform**

Toronto, Ontario, Canada · [esquivel.antonn@gmail.com](mailto:esquivel.antonn@gmail.com) · [LinkedIn](https://linkedin.com/in/antonn-esquivel) · [GitHub](https://github.com/ton03)

📄 [View PDF](https://ton03.github.io/cv/) · [Download PDF](https://ton03.github.io/cv/resume.pdf)

---

## Summary

Front-end engineer, 12 years, most of it on design systems: the shared component libraries product teams rely on. The throughline: build the library a company stands on, then close the gap between it existing and being used correctly everywhere. Leads development of Market, Square's React component library, and the company-wide migration onto it. Holds a high bar for UI correctness across design fidelity, semantics, accessibility, and how it feels to use.

## Currently

Focused on making AI a dependable contributor to a production design system: pushing how much real component and migration work agents can carry while quality holds.

## Skills

**Languages:** TypeScript, JavaScript, Python

**Frameworks & Libraries:** React, React Router, Stencil

**Design Systems:** Component libraries, Design tokens, Theming, CSS architecture, Web Components, Headless primitives, Accessibility (WCAG, ARIA)

**AI Engineering:** Agent skills & rules authoring, MCP integration, agent-assisted migration · Claude Code, Codex, Amp, Cursor

**Testing:** Vitest, Playwright, Cypress, Storybook, Visual regression, RTL

**Build & Infra:** Nx, Vite, ESLint, Stylelint, CI/CD, SSR, Terraform

**Design:** Figma, Photoshop, Illustrator · Web, product & graphic design · Design-to-code with Claude

## Experience

### Staff Front-End Engineer · Block (Square)

Toronto, Canada · Remote · Oct 2021 – Present

- Own the monorepo-wide migration of every Square web surface onto Market, driving the remaining ~2,400 legacy-importing files toward zero, incrementally and without breaking the products that depend on it
- Designed and built the AI-assisted migration system the team runs on: a migration index, component parity tracker, and repo-wide ESLint rules that gate every change. Agents handle the mechanical conversions while engineers own the API and edge-case calls, lifting migration volume to roughly 1.7× the prior four years combined
- Built a self-hosted visual-regression system, favored over a ~$100K/yr SaaS subscription, that scales with AI-era PR volume at a fraction of the cost
- Act as the design system's gatekeeper for API shape, semantics, accessibility, and tokens, steering other engineers' contributions and partnering with design to carry their intent into states, interaction, and finished detail
- Authored the library's most complex components (selects, filters, tables), now separating their behavior layer from their composition layer so each evolves independently: the behavior layer can wrap a third-party logic library or in-house code, the composition layer can target a custom design system or an off-the-shelf kit
- Rebuilt the icon system end-to-end, from Figma to tree-shakable React, moved every legacy icon onto it, with ESLint blocking new legacy imports

> TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint, Terraform

### Senior Front-End Engineer · Aspire (aspireiq.com)

Toronto, Canada · Remote · Sep 2019 – Oct 2021

- Core engineer on the component library behind Aspire's influencer-marketing platform
- Built the platform's metrics and data-visualization UI

> TypeScript, React, SASS, D3, Python

### Front-End Engineer · Iress (iress.com)

Sydney & Melbourne, Australia · Aug 2016 – Aug 2019

- One of the founding engineers on Iress's shared component library for wealth-management products, setting patterns other teams reused for years
- Overhauled product UIs to bring several wealth-management products onto the new library

> TypeScript, React, SASS, UI Design

### Earlier · ZipMatch · Nokia Networks

Manila, Philippines · 2013 – 2016

- ZipMatch (2015–16): iOS real-estate app with virtual-reality property tours
- Nokia Networks (2013–15): internal web tooling, with shell and Python scripts for build automation and continuous integration

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
typst compile src/resume.typ docs/resume.pdf
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
