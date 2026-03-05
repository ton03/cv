// ─── Page & Font Setup ───
#set page(paper: "a4", margin: (x: 0.9cm, y: 0.7cm))
#set text(font: "Avenir Next", size: 8.5pt, fill: rgb("#333"))
#set par(leading: 0.7em)
#set list(spacing: 0.7em)
#set document(title: "Antonn Esquivel — Resume", author: "Antonn Esquivel")
#let accent = rgb("#4a7c91")
#let divider = line(length: 100%, stroke: 0.3pt + rgb("#e0e0e0"))

// ─── Heading Styles ───
#show heading.where(level: 2): it => {
  v(4pt)
  text(size: 9pt, weight: "bold", fill: accent, tracking: 0.06em)[#upper(it.body)]
  v(-2pt)
  line(length: 100%, stroke: 0.5pt + rgb("#ddd"))
  v(1pt)
}

// ─── Helper Functions ───
#let entry(title, org, location, dates) = {
  [*#title* #h(8pt) #text(fill: rgb("#888"), size: 8pt)[#dates]]
  v(1pt)
  [#text(fill: rgb("#666"))[#org] #h(8pt) #text(fill: rgb("#999"), size: 8pt)[#location]]
}

#let tech(body) = {
  text(fill: rgb("#999"), size: 8pt)[#body]
}

#let skill-row(label, items) = {
  [*#label*]
  linebreak()
  text(fill: rgb("#555"), size: 8pt)[#items]
}

// ─── Header ───
#align(center)[
  #text(font: "DM Serif Text", size: 20pt, fill: rgb("#222"), tracking: 0.04em)[Antonn Esquivel]
  #v(-6pt)
  #text(size: 9.5pt, fill: rgb("#666"))[Design Systems Engineer]
  #v(2pt)
  #text(size: 8pt, fill: rgb("#888"))[
    Toronto, Ontario, Canada
    #h(6pt) · #h(6pt)
    #link("mailto:esquivel.antonn@gmail.com")[esquivel.antonn\@gmail.com]
    #h(6pt) · #h(6pt)
    #link("https://linkedin.com/in/antonn-esquivel")[linkedin.com/in/antonn-esquivel]
    #h(6pt) · #h(6pt)
    #link("https://github.com/ton03")[github.com/ton03]
  ]
]

#v(12pt)

// ─── Two Column Layout ───
#grid(
  columns: (0.32fr, 0.68fr),
  column-gutter: 14pt,

  // ═══════════════════════
  // LEFT COLUMN
  // ═══════════════════════
  {
    // ─── Summary ───
    text(size: 9pt, weight: "bold", fill: accent, tracking: 0.06em)[SUMMARY]
    v(-2pt)
    line(length: 100%, stroke: 0.5pt + rgb("#ddd"))
    v(2pt)
    [Design-oriented Front-End Engineer with 12+ years of experience building design systems at scale. Co-leads Market, Square's React component library, serving multiple product teams and repositories. Bridges design and engineering with deep expertise in accessibility, component architecture, and developer tooling.]

    v(8pt)

    // ─── Skills ───
    text(size: 9pt, weight: "bold", fill: accent, tracking: 0.06em)[SKILLS]
    v(-2pt)
    line(length: 100%, stroke: 0.5pt + rgb("#ddd"))
    v(2pt)

    skill-row("Languages", "TypeScript, JavaScript, Python")
    v(4pt)
    skill-row("Frameworks & Libraries", "React, React Router, Redux, Stencil, Apollo GraphQL")
    v(4pt)
    skill-row("Design Systems", "Component libraries, Design tokens, Accessibility")
    v(4pt)
    skill-row("Design", "Figma, Photoshop, Illustrator, UI/UX, Responsive design")
    v(4pt)
    skill-row("Testing", "Vitest, Playwright, Cypress, Storybook, Chromatic, React Testing Library")
    v(4pt)
    skill-row("Build & Infra", "Nx, Webpack, Vite, ESLint, Stylelint, CI/CD")
    v(4pt)
    skill-row("AI & Tools", "Cursor, Claude Code, Amp, Codex, Agent skill authoring")

    v(8pt)

    // ─── Education ───
    text(size: 9pt, weight: "bold", fill: accent, tracking: 0.06em)[EDUCATION]
    v(-2pt)
    line(length: 100%, stroke: 0.5pt + rgb("#ddd"))
    v(2pt)

    [*BS Computer Science*]
    linebreak()
    text(fill: rgb("#666"))[De La Salle University]
    linebreak()
    text(fill: rgb("#999"), size: 8pt)[Manila, Philippines · 2013]
  },

  // ═══════════════════════
  // RIGHT COLUMN
  // ═══════════════════════
  {
    text(size: 9pt, weight: "bold", fill: accent, tracking: 0.06em)[EXPERIENCE]
    v(-2pt)
    line(length: 100%, stroke: 0.5pt + rgb("#ddd"))
    v(2pt)

    entry("Staff Front-End Engineer", "Block (Square)", "Toronto, Ontario, Canada · Remote", "Oct 2021 – Present")
    v(2pt)
    list(
      [Co-lead *Market*, the *React design system library* — 55+ components serving 25+ product domains across multiple repositories],
      [Develop *accessible components* with ARIA support, keyboard navigation, and WCAG 2.1 AA compliance, working closely with design teams],
      [Author *design and strategy documents* — component architecture, migration plans, and technical comparisons that shape the team's direction],
      [Drive the migration from Web Components to React — previously supported Ember and other frameworks via Web Components],
      [Architect the *icon infrastructure* end-to-end — Figma to SVGs to tree-shakable React components — and migrate all legacy icon usage across the codebase],
      [Write custom *ESLint rules* based on company needs to enforce standardization, best practices, and code quality across the organization],
      [Build *developer tooling* — Chromatic visual regression infrastructure, standardized Storybook configuration, component guidelines, usage patterns, and migration guides],
      [Provide educational code reviews and collaborate cross-team — 400+ reviews with a 2:1 review-to-PR ratio],
    )
    v(2pt)
    tech[TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint]

    v(4pt)
    divider
    v(4pt)

    entry("Senior Front-End Engineer", "Aspire (aspireiq.com)", "Toronto, Ontario, Canada · Remote", "Sep 2019 – Oct 2021")
    v(1pt)
    list(
      [Built components for an influencer marketing CRM platform, working closely with designers],
      [Main contributor to the component library and built metrics UI with data visualizations],
    )
    v(2pt)
    tech[TypeScript, React, SASS, Apollo GraphQL, D3, Python]

    v(4pt)
    divider
    v(4pt)

    entry("Front-End Engineer", "Iress (iress.com)", "Sydney & Melbourne, Australia", "Aug 2016 – Aug 2019")
    v(1pt)
    list(
      [Built UI components for fintech products, collaborating closely with design teams],
      [Initial contributor to the company's shared component library for wealth management and financial planning products],
    )
    v(2pt)
    tech[TypeScript, React, Redux, SASS, UI Design]

    v(4pt)
    divider
    v(4pt)

    entry("iOS Engineer", "ZipMatch", "Manila, Philippines", "Nov 2015 – Apr 2016")
    v(1pt)
    list(
      [Designed and developed an iOS app for real estate with virtual reality property tours],
    )
    v(2pt)
    tech[Swift, iOS, UI Design]

    v(4pt)
    divider
    v(4pt)

    entry("Software Engineer", "Nokia Networks", "Manila, Philippines", "Jul 2013 – Oct 2015")
    v(1pt)
    list(
      [Built internal web applications with React],
      [Configured Jenkins CI pipelines, wrote Python automation scripts, and managed build infrastructure],
    )
    v(2pt)
    tech[HTML, CSS, JavaScript, React, Python]
  },
)
