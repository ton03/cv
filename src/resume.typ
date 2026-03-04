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

#entry("Staff Software Engineer, Square Web Platform", "Block (Square)", "Toronto, ON", "YEAR – Present") // TODO: update start date
- Own and develop Market React, Square's React design system library used across all seller-facing web products in the square-web monorepo
- Led the migration from Stencil Web Components to React, building accessible wrappers with full ARIA support, keyboard navigation, and WCAG 2.1 AA compliance
- Executed a monorepo-wide icon migration, deprecating legacy shared-ui Icon components and standardizing on MarketIcon across 15+ product domains
- Introduced Vitest browser mode testing infrastructure for layout-dependent component tests, improving test reliability over JSDOM
- Built developer tooling including CSS module type declaration generation with CI freshness checks, and authored AI-assisted development rules to accelerate contributor onboarding
- Maintained comprehensive Storybook documentation with interactive guides, API references, and Chromatic visual regression testing
- Cleaned up deprecated Storybook packages and test infrastructure, reducing CI overhead

#v(4pt)

// TODO: add previous roles — update company, title, dates, and bullet points
#entry("Front End Developer", "Company Name", "City", "YEAR – YEAR")
- Built responsive web applications with React, TypeScript, and modern CSS
- Collaborated with designers to implement pixel-perfect UIs from Figma mockups
- Contributed to CI/CD pipeline improvements and code review processes

#v(4pt)

#entry("Web Developer", "Company Name", "City", "YEAR – YEAR")
- Developed and maintained full-stack web applications
- Worked with HTML, CSS, JavaScript, and Python
- Built internal tools and automated workflows

// ─── Skills ───
== Skills

#grid(
  columns: (auto, 1fr),
  gutter: 6pt,
  [*Languages*], [TypeScript, JavaScript, HTML, CSS, Python],
  [*Frameworks*], [React, React Router 7, Stencil, Storybook, Vitest, Playwright],
  [*Design Systems*], [Component libraries, Design tokens, CSS Modules, Figma-to-code],
  [*Infrastructure*], [Nx monorepo, Webpack, Vite, ESLint, GraphQL codegen, CI/CD],
  [*Practices*], [Accessibility (WCAG 2.1 AA), Responsive design, Visual regression testing, Code review],
)

// ─── Education ───
== Education

// TODO: update with your degree, school, and dates
#entry("Degree", "University Name", "City", "Year – Year")
