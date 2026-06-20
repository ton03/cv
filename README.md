# Antonn Esquivel

**Design Systems Engineer**

Toronto, Ontario, Canada · [esquivel.antonn@gmail.com](mailto:esquivel.antonn@gmail.com) · [LinkedIn](https://linkedin.com/in/antonn-esquivel) · [GitHub](https://github.com/ton03)

📄 [View PDF](https://ton03.github.io/cv/) · [Download PDF](https://ton03.github.io/cv/resume.pdf)

---

## Summary

Front-end engineer with 12 years of experience, almost all of it spent on design systems, the shared component libraries product teams build on. Leads Market, Square's React component library, and owns the migration of every Square web product surface onto it, increasingly by handing the mechanical work to AI agents. Holds a high bar for UI correctness: design fidelity, semantics, accessibility, and how it actually feels to use.

## Currently

Deep in AI-assisted engineering right now: building and sharing the agent workflows and guardrails that help the team ship design-system work faster.

## Skills

**Languages:** TypeScript, JavaScript, Python

**Frameworks & Libraries:** React, React Router, Redux, Stencil, Apollo GraphQL

**Design Systems:** Component libraries, Design tokens, Theming, Accessibility

**AI & Tooling:** Claude Code, Codex, Amp, Cursor, Agent skill authoring

**Testing:** Vitest, Playwright, Cypress, Storybook, Visual regression, RTL

**Build & Infra:** Nx, Vite, ESLint, Stylelint, CI/CD

**Practices:** Design fidelity, Accessibility, UX

**Design:** Figma, Photoshop, Illustrator · Web, product & graphic design

## Experience

### Staff Front-End Engineer — Block (Square)

Toronto, Canada · Remote · Oct 2021 – Present

- Lead Market development and own the React migration across every Square web product surface, moving off legacy Stencil incrementally while keeping it compatible for the products built on it
- Built the AI-assisted migration workflow the team runs on: agents do the mechanical conversions and test updates, engineers review the API choices and edge cases
- Replaced a five-figure-a-month visual-testing vendor with a self-hosted system at a fraction of the cost, and made it the check that keeps agent-written PRs reviewable, with agents verifying their own changes in staging
- Authored Market's complex components (selects, filters, cards), and now pulling their behavior into headless primitives so rendering is swappable: React today, server-driven UI (SDUI) next
- On Square Web Platform, own the shared UI foundations every web team builds on: component APIs, migration guardrails, and the CI checks that keep product work moving
- Partner with design on the UI/UX calls, carrying their intent into the component APIs, states, and accessibility where it usually gets lost
- Rebuilt the icon system end-to-end, from Figma to tree-shakable React, and moved every legacy icon onto it

> TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint

### Senior Front-End Engineer — Aspire (aspireiq.com)

Toronto, Canada · Remote · Sep 2019 – Oct 2021

- A primary engineer behind Aspire's component library, the foundation its influencer-marketing platform was built on
- Built the platform's metrics and data-visualization UI

> TypeScript, React, SASS, Apollo GraphQL, D3, Python

### Front-End Engineer — Iress (iress.com)

Sydney & Melbourne, Australia · Aug 2016 – Aug 2019

- Among the founding engineers on Iress's shared component library for wealth-management products, setting the patterns other teams built on for years
- Overhauled product UIs to bring several wealth-management products onto the new library

> TypeScript, React, Redux, SASS, UI Design

### iOS Engineer — ZipMatch

Manila, Philippines · Nov 2015 – Apr 2016

- Designed and developed an iOS real-estate app with virtual-reality property tours

> Swift, iOS, UI Design

### Software Engineer — Nokia Networks

Manila, Philippines · Jul 2013 – Oct 2015

- Built internal web apps in React; set up Jenkins CI pipelines and Python build-automation scripts

> HTML, CSS, JavaScript, React, Python

## Education

**BS Computer Science** — De La Salle University, Manila, Philippines · 2013

---

<details>
<summary>Development notes</summary>

### Stack

- **[Typst](https://typst.app)** — Modern typesetting for clean, ATS-friendly PDFs
- **GitHub Actions** — Auto-compiles on push
- **GitHub Pages** — Hosted from `docs/`

### Local development

Edit `src/resume.typ` and compile locally:

```bash
typst compile src/resume.typ docs/resume.pdf
```

Or just push — the GitHub Action will compile and commit the PDF automatically.

### Structure

```
src/resume.typ          ← resume source (source of truth)
README.md               ← markdown version (kept in sync)
docs/index.html         ← landing page (GitHub Pages)
docs/resume.pdf         ← compiled output
.github/workflows/      ← auto-build on push
```

</details>
