// ─── Tunable density knobs (the one-page fit loop adjusts these) ───
#let body-font = sys.inputs.at("font", default: "Inter")  // swap via --input font="…" (Inter: plain un-slashed zero)
#let body-size = 8.3pt
#let left-size = 8.5pt   // left rail runs a touch larger to balance the columns
#let lead = 0.58em
#let list-gap = 1em      // space BETWEEN experience bullets
#let sec-gap = 9pt      // space before a section block
#let job-gap = 4pt      // space between jobs

// ─── Page & Font Setup ───
#set page(paper: "a4", margin: (x: 0.85cm, top: 1.0cm, bottom: 0.62cm))
#set text(font: body-font, size: body-size, fill: rgb("#333"))
#set par(leading: lead, justify: false)
#set list(tight: false, spacing: list-gap, marker: text(fill: rgb("#9bb7c2"))[•], body-indent: 5pt, indent: 1pt)
#set document(title: "Antonn Esquivel Resume", author: "Antonn Esquivel")
#let accent = rgb("#4a7c91")
#let divider = line(length: 100%, stroke: 0.3pt + rgb("#e0e0e0"))

// ─── Section heading (used in both columns) ───
#let sec(title) = {
  v(sec-gap)
  text(size: 8.8pt, weight: "bold", fill: accent, tracking: 0.08em)[#upper(title)]
  v(-3pt)
  line(length: 100%, stroke: 0.5pt + rgb("#ddd"))
  v(2pt)
}

// ─── Helper Functions ───
#let entry(title, org, location, dates) = {
  [*#title* #h(8pt) #text(fill: rgb("#888"), size: 7.8pt)[#dates]]
  v(0.5pt)
  if org == "" {
    [#text(fill: rgb("#999"), size: 7.8pt)[#location]]
  } else {
    [#text(fill: rgb("#666"))[#org] #h(7pt) #text(fill: rgb("#999"), size: 7.8pt)[#location]]
  }
}

#let tech(body) = text(fill: rgb("#9a9a9a"), size: 7.8pt, style: "italic")[#body]

#let skill-row(label, items) = {
  [*#label*:#h(4pt)#text(fill: rgb("#555"), size: 8.8pt)[#items]]
}

#let sidebar-block(body) = {
  set text(size: left-size)
  set par(leading: 0.72em)
  body
}

#let sidebar-section(body) = {
  sidebar-block({
    v(11pt)
    body
  })
}

// ─── Header ───
#align(center)[
  #text(font: "DM Serif Text", size: 21pt, fill: rgb("#222"), tracking: 0.03em)[Antonn Esquivel]
  #v(-7pt)
  #text(size: 9.5pt, fill: rgb("#666"), tracking: 0.02em)[Staff Front-End Engineer · Design Systems & Web Platform]
  #v(3pt)
  #text(size: 8pt, fill: rgb("#888"))[
    Toronto, Ontario, Canada
    #h(5pt) · #h(5pt)
    #link("https://tonn.esq")[tonn.esq]
    #h(5pt) · #h(5pt)
    #link("mailto:hello@tonn.esq")[hello\@tonn.esq]
    #h(5pt) · #h(5pt)
    #link("https://linkedin.com/in/antonn-esquivel")[linkedin.com/in/antonn-esquivel]
  ]
]

#v(9pt)

// ─── Two Column Layout ───
#grid(
  columns: (0.36fr, 0.64fr),
  column-gutter: 15pt,

  // The grid cells are positioned explicitly so source/PDF tag order stays
  // close to single-column resume order while the rendered page remains two-column.
  grid.cell(x: 0, y: 0, {
    sidebar-block({
    sec("Summary")
    [Staff front-end engineer focused on design systems and web platforms. Owns BlockUI Web, Block's web design system for Square and Cash App, and Market Web, Square's React design system, across development, migration, adoption, and support. Builds AI-assisted workflows that delegate repetitive work while engineers and designers retain ownership of APIs, accessibility, visual quality, and judgment. Works closely with designers to turn intent into consistent interfaces.]
    })
  }),

  grid.cell(x: 0, y: 1, {
    sidebar-section({
    sec("Currently")
    [Owns BlockUI Web, Block's web design system for Square and Cash App, and Market Web, Square's React design system, across development, migration, adoption, and support, in close partnership with designers. Builds AI-assisted workflows for Square Web Platform, delegating repetitive work while engineers and designers own API decisions, accessibility, visual quality, and judgment.]
    })
  }),

  // ═══════════════════════ RIGHT COLUMN ═══════════════════════
  grid.cell(x: 1, y: 0, rowspan: 4, {
    sec("Experience")

    entry("Staff Front-End Engineer", "Square (Block)", "Toronto, Canada · Remote", "Oct 2021 – Present")
    v(2pt)
    list(
      [Own BlockUI Web, Block's web design system for Square and Cash App web products, across platform development, component delivery, adoption, and support, in close partnership with designers],
      [Own Market Web, Square's React design system and web platform, across migration, component development, adoption, and support],
      [Lead the migration from Ember and legacy Web Components to Market's React library, delegating repetitive conversion work to agents while engineers retain ownership of API decisions, edge cases, accessibility, and visual quality],
      [Build a self-coordinating agent that opens migration PRs for web teams, assigns reviewers, and improves from code and visual review feedback],
      [Standardize web snapshot testing across Block products, dramatically increasing coverage while reducing total infrastructure and storage costs from roughly \$20k per month to under \$2k],
      [Author some of the library's most complex components, separating behavior from composition so logic and UI layers can evolve independently],
      [Set engineering and review standards for Market adoption, aligning API design, accessibility, semantics, and visual fidelity across contributions from multiple web teams],
    )
    v(2pt)
    tech[TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint]

    v(job-gap); divider; v(job-gap)

    entry("Senior Front-End Engineer", "Aspire (aspireiq.com)", "Toronto, Canada · Remote", "Sep 2019 – Oct 2021")
    v(1pt)
    list(
      [Core engineer on the component library behind Aspire's influencer-marketing platform],
      [Built metrics, data-visualization, and other product features across the influencer-marketing platform],
    )
    v(2pt)
    tech[TypeScript, React, SASS, D3, Python]

    v(job-gap); divider; v(job-gap)

    entry("Front-End Engineer", "Iress (iress.com)", "Sydney & Melbourne, Australia", "Aug 2016 – Aug 2019")
    v(1pt)
    list(
      [Contributed to Iress's shared component library from its early development, helping establish patterns other teams reused for years],
      [Overhauled product UIs to bring several wealth-management products onto the new library],
    )
    v(2pt)
    tech[TypeScript, React, SASS, UI Design]

    v(job-gap); divider; v(job-gap)

    [*iOS Developer* #h(7pt) #text(fill: rgb("#666"))[ZipMatch] #h(7pt) #text(fill: rgb("#999"), size: 7.8pt)[Manila, Philippines · 2015 – 2016]]
    v(1pt)
    list([Built an iOS real-estate app with virtual-reality property tours])
    v(3pt)
    [*Software Engineer* #h(7pt) #text(fill: rgb("#666"))[Nokia Networks] #h(7pt) #text(fill: rgb("#999"), size: 7.8pt)[Manila, Philippines · 2013 – 2015]]
    v(1pt)
    list([Built internal web tooling, with shell and Python scripts for build automation and continuous integration])
    v(2pt)
    tech[Swift, iOS, JavaScript, Python, CI/CD]
  }),

  grid.cell(x: 0, y: 2, {
    sidebar-section({
    sec("Skills")
    skill-row("Languages", "TypeScript, JavaScript, Python")
    v(5pt)
    skill-row("Frameworks & Libraries", "React, Next.js, Remix, React Router, shadcn/ui, Base UI, Stencil, D3, Web Components, Ember")
    v(5pt)
    skill-row("Design Systems", "Component libraries, Icon systems, Design tokens, Theming, CSS architecture, Web Components, Headless primitives, Accessibility (WCAG, ARIA)")
    v(5pt)
    skill-row("AI-Assisted Workflows", "Agent skills and rules authoring, Claude Code, Codex, Amp, Cursor")
    v(5pt)
    skill-row("Testing", "Vitest, Playwright, Cypress, Storybook, Snapshot testing, Visual regression, React Testing Library")
    v(5pt)
    skill-row("Build & Infra", "Vite, Nx, Rollup, Webpack, ESLint, Stylelint, CI/CD, SSR")
    v(5pt)
    skill-row("Design", "Figma, Photoshop, Illustrator, web, product, and graphic design, design-to-code with Claude")
    })
  }),

  grid.cell(x: 0, y: 3, {
    sidebar-section({
    sec("Education")
    [*BS Computer Science*]
    linebreak()
    text(fill: rgb("#666"))[De La Salle University]
    linebreak()
    text(fill: rgb("#999"), size: 7.8pt)[Manila, Philippines · 2013]
    })
  }),
)
