@echo off

cd /d "%~dp0"

qpdf --empty --pages cover\00_cover.pdf manuscript\book.pdf -- final-book.pdf

if errorlevel 1 (
    echo.
    echo Build failed.
    exit /b 1
)

echo.
echo Created: final-book.pdf