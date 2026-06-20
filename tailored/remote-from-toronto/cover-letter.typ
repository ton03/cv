// Simple remote-from-Toronto cover letter template
#set page(paper: "a4", margin: (x: 1.9cm, y: 1.65cm), fill: white)
#set text(font: "Inter", size: 10.2pt, fill: rgb("#2f3437"))
#set par(leading: 0.78em, justify: false)
#set document(title: "Antonn Esquivel — Cover Letter", author: "Antonn Esquivel")

#let accent = rgb("#4a7c91")
#let muted = rgb("#687076")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 18pt,
  [
    #text(font: "DM Serif Text", size: 18pt, fill: rgb("#202426"), tracking: 0.025em)[Antonn Esquivel]
    #v(-3pt)
    #text(size: 9pt, fill: muted)[Staff Front-End Engineer · Frontend Platform]
  ],
  [
    #align(right)[
      #text(size: 8.4pt, fill: muted)[
        Toronto, Ontario, Canada
        #linebreak()
        #link("mailto:esquivel.antonn@gmail.com")[esquivel.antonn\@gmail.com]
        #linebreak()
        #link("https://linkedin.com/in/antonn-esquivel")[LinkedIn]
        #h(5pt) · #h(5pt)
        #link("https://github.com/ton03")[GitHub]
      ]
    ]
  ],
)

#v(12pt)
#line(length: 100%, stroke: 0.55pt + rgb("#d9e4e8"))
#v(18pt)

#text(fill: muted)[[Date]]

#v(12pt)

#text(weight: "bold", fill: accent)[Re: [Role Title]]

#v(12pt)

Hi [Company] team,

#v(9pt)

I'm interested in the [Role Title] role at [Company]. I am a Staff Front-End Engineer at Block/Square, based in Toronto, where I co-lead Market, Square's React design system library. My work spans accessible React components, frontend platform tooling, migration strategy, UI quality, and adoption across many product domains.

#v(9pt)

I am looking for a full-time employee role where I can work remotely from Toronto, Canada. I have worked successfully this way across North American time zones and am open to occasional travel for onboarding, planning, and important team moments.

#v(9pt)

If [Company] can support Canada-based employment, I would be glad to talk about how my frontend platform and design systems experience maps to the team.

#v(9pt)

Best,
#linebreak()
Antonn
