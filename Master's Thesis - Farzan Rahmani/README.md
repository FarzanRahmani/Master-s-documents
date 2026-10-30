# Thesis Template

A LaTeX template for typesetting theses in Persian.

By: Hamid Zarrabi-Zadeh

## This Thesis

This directory adapts the template for Farzan Rahmani's M.Sc. thesis, **Predicting Catastrophic Overfitting in Fast Adversarial Training**, at Sharif University of Technology, supervised by Dr. Mohammad Hossein Rohban.

- `thesis.tex` is the main entry point; `thesis.pdf` is the compiled document.
- `front/` contains metadata and preliminary pages.
- `chapters/` contains the thesis chapters.
- `bibs/` contains bibliography data.
- `figs/` and `images/` contain visual assets.
- `styles/` contains formatting, helper packages, and bundled fonts.

Use XeLaTeX and BibTeX. From the parent repository directory on Windows, run `build_documents.cmd Thesis`. For prerequisites and manual build commands, see the [repository README](../README.md). Compile from this directory when invoking TeX tools manually so relative paths resolve.

## License
This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).
