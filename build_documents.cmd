@echo off
setlocal
rem Usage: build_documents.cmd [All^|Thesis^|Slides^|PersianSlides^|EnglishSlides]
set "target=%~1"
if "%target%"=="" set "target=All"
if /I "%target%"=="All" goto all
if /I "%target%"=="Thesis" goto thesis
if /I "%target%"=="Slides" goto slides
if /I "%target%"=="PersianSlides" goto persian_slides
if /I "%target%"=="EnglishSlides" goto english_slides
echo Usage: build_documents.cmd [All^|Thesis^|Slides^|PersianSlides^|EnglishSlides]
exit /b 1

:all
call :build "%~dp0Master's Thesis - Farzan Rahmani" thesis
if errorlevel 1 exit /b 1
goto slides

:thesis
call :build "%~dp0Master's Thesis - Farzan Rahmani" thesis
exit /b %errorlevel%

:slides
call :build "%~dp0Master's Thesis Slides - Farzan Rahmani\Persian" defense_slides
if errorlevel 1 exit /b 1
call :build "%~dp0Master's Thesis Slides - Farzan Rahmani\English" defense_slides
exit /b %errorlevel%

:persian_slides
call :build "%~dp0Master's Thesis Slides - Farzan Rahmani\Persian" defense_slides
exit /b %errorlevel%

:english_slides
call :build "%~dp0Master's Thesis Slides - Farzan Rahmani\English" defense_slides
exit /b %errorlevel%

:build
pushd "%~1" || exit /b 1
xelatex -interaction=batchmode -halt-on-error -file-line-error "%~2.tex"
if errorlevel 1 goto build_error
bibtex "%~2"
if errorlevel 1 goto build_error
rem Extra passes settle citations, lists and page-number changes on a clean build.
for /L %%P in (1,1,3) do (
    xelatex -interaction=batchmode -halt-on-error -file-line-error "%~2.tex"
    if errorlevel 1 goto build_error
)
echo Built %~2.pdf
popd
exit /b 0

:build_error
echo Build failed for %~2. See the document log.
popd
exit /b 1
