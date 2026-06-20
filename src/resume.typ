// ─── Tunable density knobs (the one-page fit loop adjusts these) ───
#let body-font = sys.inputs.at("font", default: "Atkinson Hyperlegible")  // swap via --input font="…"
#let body-size = 8.5pt
#let left-size = 9.5pt   // left rail runs a touch larger to balance the columns
#let lead = 0.64em
#let list-gap = 0.92em   // space BETWEEN bullets (kept well above `lead` so items separate clearly)
#let sec-gap = 11pt     // space before a section block
#let job-gap = 5pt      // space between jobs

// ─── Page & Font Setup ───
#set page(paper: "a4", margin: (x: 0.85cm, y: 0.62cm))
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
  [#text(fill: rgb("#666"))[#org] #h(7pt) #text(fill: rgb("#999"), size: 7.8pt)[#location]]
}

#let tech(body) = text(fill: rgb("#9a9a9a"), size: 7.8pt, style: "italic")[#body]

#let skill-row(label, items) = {
  [*#label* #h(4pt) #text(fill: rgb("#555"), size: 8.8pt)[#items]]
}

// ─── Header ───
#align(center)[
  #text(font: "DM Serif Text", size: 21pt, fill: rgb("#222"), tracking: 0.03em)[Antonn Esquivel]
  #v(-7pt)
  #text(size: 9.5pt, fill: rgb("#666"), tracking: 0.02em)[Design Systems Engineer]
  #v(3pt)
  #text(size: 8pt, fill: rgb("#888"))[
    Toronto, Ontario, Canada
    #h(5pt) · #h(5pt)
    #link("mailto:esquivel.antonn@gmail.com")[esquivel.antonn\@gmail.com]
    #h(5pt) · #h(5pt)
    #link("https://linkedin.com/in/antonn-esquivel")[linkedin.com/in/antonn-esquivel]
    #h(5pt) · #h(5pt)
    #link("https://github.com/ton03")[github.com/ton03]
  ]
]

#v(9pt)

// ─── Two Column Layout ───
#grid(
  columns: (0.36fr, 0.64fr),
  column-gutter: 15pt,

  // ═══════════════════════ LEFT COLUMN ═══════════════════════
  {
    set text(size: left-size)
    set par(leading: 0.82em)
    sec("Summary")
    [Front-end engineer with 12 years of experience, almost all of it spent on design systems, the shared component libraries product teams build on. Leads Market, Square's React component library, and owns the migration of every Square web product surface onto it, increasingly by handing the mechanical work to AI agents. Holds a high bar for UI correctness: design fidelity, semantics, accessibility, and how it actually feels to use.]

    sec("Currently")
    [Deep in AI-assisted engineering right now: building and sharing the agent workflows and guardrails that help the team ship design-system work faster.]

    sec("Skills")
    skill-row("Languages", "TypeScript, JavaScript, Python")
    v(7pt)
    skill-row("Frameworks & Libraries", "React, React Router, Redux, Stencil, Apollo GraphQL")
    v(7pt)
    skill-row("Design Systems", "Component libraries, Design tokens, Theming, Accessibility")
    v(7pt)
    skill-row("AI & Tooling", "Claude Code, Codex, Amp, Cursor, Agent skill authoring")
    v(7pt)
    skill-row("Testing", "Vitest, Playwright, Cypress, Storybook, Visual regression, RTL")
    v(7pt)
    skill-row("Build & Infra", "Nx, Vite, ESLint, Stylelint, CI/CD")
    v(7pt)
    skill-row("Practices", "Design fidelity, Accessibility, UX")
    v(7pt)
    skill-row("Design", "Figma, Photoshop, Illustrator · Web, product & graphic design")

    sec("Education")
    [*BS Computer Science*]
    linebreak()
    text(fill: rgb("#666"))[De La Salle University]
    linebreak()
    text(fill: rgb("#999"), size: 7.8pt)[Manila, Philippines · 2013]
  },

  // ═══════════════════════ RIGHT COLUMN ═══════════════════════
  {
    sec("Experience")

    entry("Staff Front-End Engineer", "Block (Square)", "Toronto, Canada · Remote", "Oct 2021 – Present")
    v(2pt)
    list(
      [Lead Market development and own the React migration across every Square web product surface, moving off legacy Stencil incrementally while keeping it compatible for the products built on it],
      [Built the AI-assisted migration workflow the team runs on: agents do the mechanical conversions and test updates, engineers review the API choices and edge cases],
      [Replaced a five-figure-a-month visual-testing vendor with a self-hosted system at a fraction of the cost, and made it the check that keeps agent-written PRs reviewable, with agents verifying their own changes in staging],
      [Authored Market's complex components (selects, filters, cards), and now pulling their behavior into headless primitives so rendering is swappable: React today, server-driven UI (SDUI) next],
      [On Square Web Platform, own the shared UI foundations every web team builds on: component APIs, migration guardrails, and the CI checks that keep product work moving],
      [Partner with design on the UI/UX calls, carrying their intent into the component APIs, states, and accessibility where it usually gets lost],
      [Rebuilt the icon system end-to-end, from Figma to tree-shakable React, and moved every legacy icon onto it],
    )
    v(2pt)
    tech[TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint]

    v(job-gap); divider; v(job-gap)

    entry("Senior Front-End Engineer", "Aspire (aspireiq.com)", "Toronto, Canada · Remote", "Sep 2019 – Oct 2021")
    v(1pt)
    list(
      [A primary engineer behind Aspire's component library, the foundation its influencer-marketing platform was built on],
      [Built the platform's metrics and data-visualization UI],
    )
    v(2pt)
    tech[TypeScript, React, SASS, Apollo GraphQL, D3, Python]

    v(job-gap); divider; v(job-gap)

    entry("Front-End Engineer", "Iress (iress.com)", "Sydney & Melbourne, Australia", "Aug 2016 – Aug 2019")
    v(1pt)
    list(
      [Among the founding engineers on Iress's shared component library for wealth-management products, setting the patterns other teams built on for years],
      [Overhauled product UIs to bring several wealth-management products onto the new library],
    )
    v(2pt)
    tech[TypeScript, React, Redux, SASS, UI Design]

    v(job-gap); divider; v(job-gap)

    entry("iOS Engineer", "ZipMatch", "Manila, Philippines", "Nov 2015 – Apr 2016")
    v(1pt)
    list(
      [Designed and developed an iOS real-estate app with virtual-reality property tours],
    )
    v(2pt)
    tech[Swift, iOS, UI Design]

    v(job-gap); divider; v(job-gap)

    entry("Software Engineer", "Nokia Networks", "Manila, Philippines", "Jul 2013 – Oct 2015")
    v(1pt)
    list(
      [Built internal web apps in React; set up Jenkins CI pipelines and Python build-automation scripts],
    )
    v(2pt)
    tech[HTML, CSS, JavaScript, React, Python]
  },
)
