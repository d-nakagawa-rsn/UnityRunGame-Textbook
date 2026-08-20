@echo off

cd /d "%~dp0"

qpdf manuscript\book-early.pdf --pages cover\00_cover-early-access.pdf 1 . 1-z -- final-book-early-access.pdf

if errorlevel 1 (
    echo.
    echo Build failed.
    exit /b 1
)

echo.
echo Created: final-book.pdf