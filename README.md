# Master's Research Documents

Academic documents and LaTeX sources for my M.Sc. in Computer Engineering, specializing in Artificial Intelligence and Robotics, at Sharif University of Technology, Tehran, Iran.

**Author:** Farzan Rahmani

**Supervisor:** Prof. Mohammad Hossein Rohban

**Program:** 2024–present

The thesis is titled **Predicting Catastrophic Overfitting in Fast Adversarial Training**. This repository also includes the related paper **SORA: Free Second-Order Attacks in Fast Adversarial Training**, seminar and proposal material, and presentation sources.

## Document Guide

| Directory or file | Contents |
| --- | --- |
| [Master's Thesis - Farzan Rahmani](Master's%20Thesis%20-%20Farzan%20Rahmani/) | Main thesis source, chapters, bibliography, figures, styles, and compiled `thesis.pdf` |
| [Master's Thesis Slides - Farzan Rahmani](Master's%20Thesis%20Slides%20-%20Farzan%20Rahmani/) | Persian and English Beamer defense presentations |
| [Master's Thesis Proposal - Farzan Rahmani](Master's%20Thesis%20Proposal%20-%20Farzan%20Rahmani/) | Proposal source, with `main.tex` as its entry point |
| [Master's Seminar - Farzan Rahmani](Master's%20Seminar%20-%20Farzan%20Rahmani/) | Seminar source and compiled `seminar.pdf` |
| [Master's Semiar Slides - Farzan Rahmani](Master's%20Semiar%20Slides%20-%20Farzan%20Rahmani/) | Seminar presentation versions; original directory spelling retained |
| [published paper](published%20paper/) | SORA paper PDFs, with and without the appendix |
| [IPL Glossary.pdf](IPL%20Glossary.pdf) | Terminology reference |
| [build_documents.cmd](build_documents.cmd) | Windows build script for the thesis and defense slides |

## Reading the Documents

Use the compiled PDFs when you only need to read the work. Source directories preserve editable text, bibliographies, figures, and formatting. Document versions may contain draft material; the thesis metadata still leaves the defense date and committee fields unspecified.

## Building the Thesis and Defense Slides

Install a TeX distribution with **XeLaTeX**, **BibTeX**, Beamer, and the packages referenced by the sources. Persian documents use Persian typesetting support and font configuration; the thesis includes font files under `styles/fonts/`. Slides also reference TeX Gyre Termes and may use system-font fallbacks.

From a Windows terminal in the repository root:

```bat
build_documents.cmd All
build_documents.cmd Thesis
build_documents.cmd Slides
build_documents.cmd PersianSlides
build_documents.cmd EnglishSlides
```

Choose one command for the desired target. `All` builds the thesis and both defense slide decks. The script runs XeLaTeX, BibTeX, and three further XeLaTeX passes, stopping on a build error. It does not build the seminar or proposal.

For a manual thesis build, run the following in `Master's Thesis - Farzan Rahmani/`:

```sh
xelatex -interaction=nonstopmode -halt-on-error thesis.tex
bibtex thesis
xelatex -interaction=nonstopmode -halt-on-error thesis.tex
xelatex -interaction=nonstopmode -halt-on-error thesis.tex
xelatex -interaction=nonstopmode -halt-on-error thesis.tex
```

Compile other documents from their own directories so relative image, font, and bibliography paths resolve. Read the document log if a font or package is unavailable. Building writes PDFs and auxiliary files beside the sources.

## Attribution and License

See [LICENSE](LICENSE) for the repository license. The thesis uses Hamid Zarrabi-Zadeh's [Persian thesis template](https://github.com/zarrabi/thesis-template), licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/); its attribution and license notices are preserved in the thesis sources and [template README](Master's%20Thesis%20-%20Farzan%20Rahmani/README.md). Published papers and other third-party material retain their applicable publication and reuse terms.
