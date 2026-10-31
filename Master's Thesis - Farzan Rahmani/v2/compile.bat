@echo off
setlocal

where xelatex >nul 2>nul
if errorlevel 1 (
  echo XeLaTeX was not found. Install TeX Live or MiKTeX with xepersian support.
  exit /b 1
)

where latexmk >nul 2>nul
if errorlevel 1 goto manual

latexmk -xelatex thesis.tex
exit /b %errorlevel%

:manual
xelatex -interaction=nonstopmode -file-line-error thesis.tex
if errorlevel 1 exit /b %errorlevel%
bibtex thesis
if errorlevel 1 exit /b %errorlevel%
xelatex -interaction=nonstopmode -file-line-error thesis.tex
if errorlevel 1 exit /b %errorlevel%
xelatex -interaction=nonstopmode -file-line-error thesis.tex
exit /b %errorlevel%

