@echo off
title Hotel Nilima Paribar - Git Updater
echo ===================================================
echo       Hotel Nilima Paribar - Git Auto Updater
echo ===================================================
echo.

echo Checking status...
git status

echo.
echo Staging all changed files...
git add .

echo.
set /p msg="Enter commit message (press ENTER for default): "
if "%msg%"=="" set msg=Updated website content

echo.
echo Committing changes with message: "%msg%"...
git commit -m "%msg%"

echo.
echo Pushing changes to GitHub...
git push origin main

echo.
if %errorlevel% equ 0 (
    echo ===================================================
    echo SUCCESS: GitHub Repository Updated Successfully!
    echo ===================================================
) else (
    echo ===================================================
    echo ERROR: Push failed. Check internet connection or Git.
    echo ===================================================
)

echo.
pause
