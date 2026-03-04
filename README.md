# Resume

📄 **[View Online](https://ton03.github.io/cv/)** · [Download PDF](https://ton03.github.io/cv/resume.pdf)

## Stack

- **[Typst](https://typst.app)** — Modern typesetting for clean, ATS-friendly PDFs
- **GitHub Actions** — Auto-compiles on push
- **GitHub Pages** — Hosted from `docs/`

## Development

Edit `src/resume.typ` and compile locally:

```bash
typst compile src/resume.typ docs/resume.pdf
```

Or just push — the GitHub Action will compile and commit the PDF automatically.

## Structure

```
src/resume.typ          ← resume source
docs/index.html         ← landing page (GitHub Pages)
docs/resume.pdf         ← compiled output
.github/workflows/      ← auto-build on push
```
