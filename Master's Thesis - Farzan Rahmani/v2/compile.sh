#!/usr/bin/env sh
set -eu

if ! command -v xelatex >/dev/null 2>&1; then
  echo "XeLaTeX was not found. Install TeX Live/MiKTeX with xepersian support." >&2
  exit 1
fi

if command -v latexmk >/dev/null 2>&1; then
  exec latexmk -xelatex thesis.tex
fi

xelatex -interaction=nonstopmode -file-line-error thesis.tex
bibtex thesis
xelatex -interaction=nonstopmode -file-line-error thesis.tex
xelatex -interaction=nonstopmode -file-line-error thesis.tex

