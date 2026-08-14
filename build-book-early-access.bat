@echo off

cd /d "%~dp0"

qpdf --empty --pages cover\00_cover-early-access.pdf manuscript\book-early.pdf -- final-book-early-access.pdf

if errorlevel 1 (
    echo.
    echo Build failed.
    exit /b 1
)

echo.
echo Created: final-book.pdf