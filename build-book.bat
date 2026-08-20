@echo off

cd /d "%~dp0"

qpdf manuscript\book.pdf --pages cover\00_cover.pdf 1 . 1-z -- final-book.pdf

if errorlevel 1 (
    echo.
    echo Build failed.
    exit /b 1
)

echo.
echo Created: final-book.pdf