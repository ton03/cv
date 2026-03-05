# Antonn Esquivel

**Design Systems Engineer**

Toronto, Ontario, Canada · [esquivel.antonn@gmail.com](mailto:esquivel.antonn@gmail.com) · [LinkedIn](https://linkedin.com/in/antonn-esquivel) · [GitHub](https://github.com/ton03)

📄 [View PDF](https://ton03.github.io/cv/) · [Download PDF](https://ton03.github.io/cv/resume.pdf)

---

## Summary

Design-oriented Front-End Engineer with 12+ years of experience building design systems at scale. Co-leads Market, Square's React component library, serving multiple product teams and repositories. Bridges design and engineering with deep expertise in accessibility, component architecture, and developer tooling.

## Skills

**Languages:** TypeScript, JavaScript, Python

**Frameworks & Libraries:** React, React Router, Redux, Stencil, Apollo GraphQL

**Design Systems:** Component libraries, Design tokens, Accessibility

**Design:** Figma, Photoshop, Illustrator, UI/UX, Responsive design

**Testing:** Vitest, Playwright, Cypress, Storybook, Chromatic, React Testing Library

**Build & Infra:** Nx, Webpack, Vite, ESLint, Stylelint, CI/CD

**AI & Tools:** Cursor, Claude Code, Amp, Codex, Agent skill authoring

## Experience

### Staff Front-End Engineer — Block (Square)

Toronto, Ontario, Canada · Remote · Oct 2021 – Present

- Co-lead **Market**, the **React design system library** — 55+ components serving 25+ product domains across multiple repositories
- Develop **accessible components** with ARIA support, keyboard navigation, and WCAG 2.1 AA compliance, working closely with design teams
- Author **design and strategy documents** — component architecture, migration plans, and technical comparisons that shape the team's direction
- Drive the migration from Web Components to React — previously supported Ember and other frameworks via Web Components
- Architect the **icon infrastructure** end-to-end — Figma to SVGs to tree-shakable React components — and migrate all legacy icon usage across the codebase
- Write custom **ESLint rules** based on company needs to enforce standardization, best practices, and code quality across the organization
- Build **developer tooling** — Chromatic visual regression infrastructure, standardized Storybook configuration, component guidelines, usage patterns, and migration guides
- Provide educational code reviews and collaborate cross-team — 400+ reviews with a 2:1 review-to-PR ratio

> TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint

### Senior Front-End Engineer — Aspire (aspireiq.com)

Toronto, Ontario, Canada · Remote · Sep 2019 – Oct 2021

- Built components for an influencer marketing CRM platform, working closely with designers
- Main contributor to the component library and built metrics UI with data visualizations

> TypeScript, React, SASS, Apollo GraphQL, D3, Python

### Front-End Engineer — Iress (iress.com)

Sydney & Melbourne, Australia · Aug 2016 – Aug 2019

- Built UI components for fintech products, collaborating closely with design teams
- Initial contributor to the company's shared component library for wealth management and financial planning products

> TypeScript, React, Redux, SASS, UI Design

### iOS Engineer — ZipMatch

Manila, Philippines · Nov 2015 – Apr 2016

- Designed and developed an iOS app for real estate with virtual reality property tours

> Swift, iOS, UI Design

### Software Engineer — Nokia Networks

Manila, Philippines · Jul 2013 – Oct 2015

- Built internal web applications with React
- Configured Jenkins CI pipelines, wrote Python automation scripts, and managed build infrastructure

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
