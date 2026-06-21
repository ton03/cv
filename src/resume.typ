// ─── Tunable density knobs (the one-page fit loop adjusts these) ───
#let body-font = sys.inputs.at("font", default: "Inter")  // swap via --input font="…" (Inter: plain un-slashed zero)
#let body-size = 8.3pt
#let left-size = 8.5pt   // left rail runs a touch larger to balance the columns
#let lead = 0.58em
#let list-gap = 0.82em   // space BETWEEN bullets (kept well above `lead` so items separate clearly)
#let sec-gap = 9pt      // space before a section block
#let job-gap = 4pt      // space between jobs

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
  [*#label*:#h(4pt)#text(fill: rgb("#555"), size: 8.8pt)[#items]]
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
    set par(leading: 0.72em)
    sec("Summary")
    [Front-end engineer, 12 years, most of it on design systems: the shared component libraries product teams rely on. The throughline: build the library a company stands on, then close the gap between it existing and being used correctly everywhere. Leads development of Market, Square's React component library, and the company-wide migration onto it. Holds a high bar for UI correctness across design fidelity, semantics, accessibility, and how it feels to use.]

    sec("Currently")
    [Focused on making AI a dependable contributor to a production design system: pushing how much real component and migration work agents can carry while quality holds.]

    sec("Skills")
    skill-row("Languages", "TypeScript, JavaScript, Python")
    v(5pt)
    skill-row("Frameworks & Libraries", "React, React Router, Stencil")
    v(5pt)
    skill-row("Design Systems", "Component libraries, Design tokens, Theming, CSS architecture, Web Components, Headless primitives, Accessibility (WCAG, ARIA)")
    v(5pt)
    skill-row("AI Engineering", "Agent skills & rules authoring, MCP integration, agent-assisted migration · Claude Code, Codex, Amp, Cursor")
    v(5pt)
    skill-row("Testing", "Vitest, Playwright, Cypress, Storybook, Visual regression, RTL")
    v(5pt)
    skill-row("Build & Infra", "Nx, Vite, ESLint, Stylelint, CI/CD, SSR, Terraform")
    v(5pt)
    skill-row("Design", "Figma, Photoshop, Illustrator · Web, product & graphic design · Design-to-code with Claude")

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
      [Own the monorepo-wide migration of every Square web surface onto Market, driving the remaining \~2,400 legacy-importing files toward zero, incrementally and without breaking the products that depend on it],
      [Designed and built the AI-assisted migration system the team runs on: a migration index, component parity tracker, and repo-wide ESLint rules that gate every change. Agents handle the mechanical conversions while engineers own the API and edge-case calls, lifting migration volume to roughly 1.7× the prior four years combined],
      [Built a self-hosted visual-regression system, favored over a \~\$100K/yr SaaS subscription, that scales with AI-era PR volume at a fraction of the cost],
      [Act as the design system's gatekeeper for API shape, semantics, accessibility, and tokens, steering other engineers' contributions and partnering with design to carry their intent into states, interaction, and finished detail],
      [Authored the library's most complex components (selects, filters, tables), now factoring their behavior and composition into separate layers so each evolves independently: behavior can wrap a library like TanStack or in-house logic, composition can target a custom design system or a kit like shadcn],
      [Rebuilt the icon system end-to-end, from Figma to tree-shakable React, moved every legacy icon onto it, with ESLint blocking new legacy imports],
    )
    v(2pt)
    tech[TypeScript, React, CSS Modules, Stencil, Storybook, Vitest, Playwright, Nx, ESLint, Terraform]

    v(job-gap); divider; v(job-gap)

    entry("Senior Front-End Engineer", "Aspire (aspireiq.com)", "Toronto, Canada · Remote", "Sep 2019 – Oct 2021")
    v(1pt)
    list(
      [Core engineer on the component library behind Aspire's influencer-marketing platform],
      [Built the platform's metrics and data-visualization UI],
    )
    v(2pt)
    tech[TypeScript, React, SASS, D3, Python]

    v(job-gap); divider; v(job-gap)

    entry("Front-End Engineer", "Iress (iress.com)", "Sydney & Melbourne, Australia", "Aug 2016 – Aug 2019")
    v(1pt)
    list(
      [One of the founding engineers on Iress's shared component library for wealth-management products, setting patterns other teams reused for years],
      [Overhauled product UIs to bring several wealth-management products onto the new library],
    )
    v(2pt)
    tech[TypeScript, React, SASS, UI Design]

    v(job-gap); divider; v(job-gap)

    entry("Earlier", "ZipMatch · Nokia Networks", "Manila, Philippines", "2013 – 2016")
    v(1pt)
    list(
      [ZipMatch (2015–16): iOS real-estate app with virtual-reality property tours],
      [Nokia Networks (2013–15): internal web tooling, with shell and Python scripts for build automation and continuous integration],
    )
    v(2pt)
    tech[Swift, iOS, JavaScript, Python, CI/CD]
  },
)
