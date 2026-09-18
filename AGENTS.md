# Agent Instructions

## Resume edits

The resume exists in two places that must stay in sync:

| File | Format | Purpose |
|------|--------|---------|
| `resume.typ` | Typst | Source of truth — compiles to PDF |
| `README.md` | Markdown | Readable on GitHub |

**When editing the resume, always update both files.**

The PDF (`resume.pdf`) is compiled automatically by GitHub Actions — don't edit it manually.

## File roles

- `resume.typ` — Resume source (Typst markup)
- `README.md` — Markdown mirror of the resume, with dev notes in a collapsed section at the bottom
- `resume.pdf` — Compiled PDF (auto-generated, do not edit)
- `.github/workflows/build.yml` — CI that compiles Typst → PDF on push
