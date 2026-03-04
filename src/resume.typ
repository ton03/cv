// ─── Page & Font Setup ───
#set page(paper: "us-letter", margin: (x: 1.8cm, y: 1.6cm))
#set text(font: "New Computer Modern", size: 10pt, fill: rgb("#2d2d2d"))
#set par(justify: true, leading: 0.65em)

// ─── Heading Styles ───
#show heading.where(level: 1): it => {
  set text(size: 22pt, weight: "bold", fill: rgb("#1a1a1a"))
  it.body
  v(-4pt)
  line(length: 100%, stroke: 0.8pt + rgb("#555"))
  v(2pt)
}

#show heading.where(level: 2): it => {
  v(6pt)
  set text(size: 11pt, weight: "bold", fill: rgb("#333"), tracking: 0.08em)
  upper(it.body)
  v(-4pt)
  line(length: 100%, stroke: 0.4pt + rgb("#ccc"))
  v(2pt)
}

// ─── Helper Functions ───
#let contact-item(body) = {
  box(body)
}

#let entry(title, org, location, dates) = {
  grid(
    columns: (1fr, auto),
    gutter: 4pt,
    [*#title* #h(6pt) #text(fill: rgb("#555"))[#org]],
    text(fill: rgb("#666"), size: 9pt)[#dates],
  )
  if location != none {
    text(fill: rgb("#777"), size: 9pt)[#location]
  }
}

// ─── Header ───
#align(center)[
  #text(size: 26pt, weight: "bold", tracking: 0.04em)[Antonn Esquivel]
  #v(-2pt)
  #text(size: 11pt, fill: rgb("#555"))[Front End Engineer · Design Systems]
  #v(4pt)
  #text(size: 9pt, fill: rgb("#666"))[
    #contact-item[Toronto, ON]
    #h(8pt) | #h(8pt)
    #contact-item[#link("mailto:tonn.esq@gmail.com")[tonn.esq\@gmail.com]]
    #h(8pt) | #h(8pt)
    #contact-item[#link("https://linkedin.com/in/antonn-esquivel")[linkedin.com/in/antonn-esquivel]]
    #h(8pt) | #h(8pt)
    #contact-item[#link("https://github.com/ton03")[github.com/ton03]]
  ]
]

#v(4pt)

// ─── Summary ───
== Summary

Front End Engineer with expertise in design systems, component libraries, and developer experience. Builds accessible, scalable UI infrastructure used across large-scale React applications. Passionate about bridging design and engineering through systematic, well-documented component architectures.

// ─── Experience ───
== Experience

#entry("Staff Software Engineer", "Block (Square)", "Toronto, ON · Remote", "Oct 2021 – Present")
- Co-lead the *React design system library* used across all customer-facing web products spanning multiple repositories
- Design and build *accessible, reusable components* with full ARIA support, *keyboard navigation*, and *WCAG 2.1 AA* compliance
- Author *engineering design documents* for complex multi-component systems, defining goals, requirements, and phased rollout plans
- Led a major *UI library version upgrade* across the codebase, coordinating breaking changes across multiple product teams
- Drove a codebase-wide migration to standardize icon usage, replacing legacy implementations across all product surfaces
- Created custom *ESLint rules* to enforce testing and code quality standards across the organization
- Introduced *browser-based integration testing* for layout-dependent components, improving test reliability
- Built *developer tooling* including CSS module type generation, *Storybook* documentation, and visual regression testing
- Help shape the team's *AI-assisted development* workflow, building tooling and rules that accelerate component development and contributor onboarding

#v(4pt)

#entry("Senior Front End Engineer", "AspireIQ", "Greater Toronto Area, Canada", "Sep 2019 – Oct 2021")
TypeScript, React, SASS, Apollo GraphQL, Python · Owned the *component library*

#v(4pt)

#entry("Front End Web Engineer", "Iress", "Melbourne, Australia", "Oct 2017 – Aug 2019")
TypeScript, React, Redux, Aurelia, SASS, UI Design

#v(4pt)

#entry("Front End Web Engineer", "Iress", "Greater Sydney Area, Australia", "Aug 2016 – Oct 2017")
TypeScript, React, Redux, SASS · Owned the *component library*

#v(4pt)

#entry("iOS Engineer", "ZipMatch", "Taguig, Philippines", "Nov 2015 – Apr 2016")
Designed and developed a real estate app with virtual reality property tours

#v(4pt)

#entry("Software Engineer", "Nokia Networks", "Philippines", "Jul 2013 – Oct 2015")
Full Stack Web Engineer; R&D Software Engineer

// ─── Skills ───
== Skills

#grid(
  columns: (auto, 1fr),
  gutter: 6pt,
  [*Languages*], [TypeScript, JavaScript, HTML, CSS, Python, Swift, Kotlin],
  [*Frameworks*], [React, React Router, Redux, Stencil, Aurelia, Apollo GraphQL],
  [*Testing*], [Vitest, Playwright, Storybook, Chromatic, React Testing Library],
  [*Design Systems*], [Component libraries, Design tokens, CSS Modules, Figma],
  [*Build & Infra*], [Nx, Webpack, Vite, pnpm, ESLint, Stylelint, CI/CD],
  [*Practices*], [Accessibility (WCAG 2.1 AA), Responsive design, Technical writing, Code review],
  [*AI Tooling*], [Cursor, AI-assisted development workflows, AI agent skill authoring],
)

// ─── Education ───
== Education

#entry("BS Computer Science", "De La Salle University", "Manila, Philippines", "2013")
