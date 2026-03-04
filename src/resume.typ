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
  #text(size: 11pt, fill: rgb("#555"))[Developer + Designer]
  #v(4pt)
  #text(size: 9pt, fill: rgb("#666"))[
    #contact-item[Toronto, ON]
    #h(8pt) | #h(8pt)
    #contact-item[#link("mailto:your.email@example.com")[your.email\@example.com]]
    #h(8pt) | #h(8pt)
    #contact-item[#link("https://linkedin.com/in/antonn-esquivel")[linkedin.com/in/antonn-esquivel]]
    #h(8pt) | #h(8pt)
    #contact-item[#link("https://github.com/ton03")[github.com/ton03]]
  ]
]

#v(4pt)

// ─── Summary ───
== Summary

Front End Engineer passionate about UI/UX and design systems. Experienced in building scalable component libraries, developer tooling, and accessible interfaces with React, TypeScript, and modern web technologies.

// ─── Experience ───
== Experience

#entry("Senior Software Engineer", "Company Name", "Toronto, ON", "Month Year – Present")
- Describe your impact, achievements, and technologies used
- Quantify results where possible (e.g., improved performance by X%, reduced bundle size by Y%)
- Focus on outcomes, not just responsibilities

#v(4pt)

#entry("Software Engineer", "Company Name", "City, Province", "Month Year – Month Year")
- Describe your impact, achievements, and technologies used
- Mention specific projects, systems, or features you built
- Highlight collaboration, leadership, or mentorship

#v(4pt)

#entry("Front End Developer", "Company Name", "City, Province", "Month Year – Month Year")
- Describe your impact, achievements, and technologies used
- Mention design system contributions, component libraries, or UI improvements
- Note any performance optimizations or accessibility work

// ─── Skills ───
== Skills

#grid(
  columns: (auto, 1fr),
  gutter: 6pt,
  [*Languages*], [TypeScript, JavaScript, HTML, CSS],
  [*Frameworks*], [React, React Router, Stencil, Storybook],
  [*Design Systems*], [Component libraries, Design tokens, Figma-to-code workflows],
  [*Tools*], [Git, Nx, Webpack, Vite, ESLint, Vitest, Playwright],
  [*Practices*], [Accessibility (WCAG), Responsive design, CI/CD, Code review],
)

// ─── Projects ───
== Projects

#entry("Design System Component Library", "Open Source", none, "Ongoing")
- Built and maintained a React component library with comprehensive Storybook documentation
- Implemented accessibility-first design with WCAG 2.1 AA compliance

#v(4pt)

#entry("react-tsx-boilerplate", "Personal", none, link("https://github.com/ton03/react-tsx-boilerplate")[github.com/ton03/react-tsx-boilerplate])
- Minimal boilerplate for React, Webpack, and TypeScript projects

// ─── Education ───
== Education

#entry("Degree", "University Name", "City, Province", "Year – Year")
