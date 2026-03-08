@echo off
REM Native Consultant Installation Script for Windows
REM Installs skill files to the user's Kimi CLI skills directory

echo ============================================
echo   Native Consultant Installer
echo   (Kimi CLI Skill)
echo ============================================
echo.

REM Set source directory (where this script is)
set "SOURCE_DIR=%~dp0"
set "SOURCE_DIR=%SOURCE_DIR:~0,-1%"

REM Determine target skills directory
set "TARGET_DIR=%USERPROFILE%\.config\agents\skills\native-consultant"

echo Source: %SOURCE_DIR%
echo Target: %TARGET_DIR%
echo.

REM Check if Kimi CLI is installed
echo Checking for Kimi CLI...
where kimi >nul 2>&1
if errorlevel 1 (
    echo.
    echo WARNING: Kimi CLI not found in PATH
    echo You can still install the skill, but you'll need Kimi CLI to use it.
    echo Download from: https://github.com/MoonshotAI/kimi-cli
    echo.
    choice /C YN /M "Continue with installation anyway"
    if errorlevel 2 exit /b 1
)

REM Check if source files exist
if not exist "%SOURCE_DIR%\SKILL.md" (
    echo ERROR: SKILL.md not found in source directory
    pause
    exit /b 1
)

REM Create target directory if it doesn't exist
if not exist "%TARGET_DIR%" (
    echo Creating directory: %TARGET_DIR%
    mkdir "%TARGET_DIR%" 2>nul
    if errorlevel 1 (
        echo ERROR: Failed to create directory
        pause
        exit /b 1
    )
)

REM Copy skill files
echo Installing skill files...
copy /Y "%SOURCE_DIR%\SKILL.md" "%TARGET_DIR%\" >nul
copy /Y "%SOURCE_DIR%\README.md" "%TARGET_DIR%\" >nul

echo.
echo ============================================
echo   Installation Complete!
echo ============================================
echo.
echo Native Consultant skill installed to:
echo   %TARGET_DIR%
echo.
echo To use Native Consultant:
echo.
echo   1. Start Kimi CLI:
echo      kimi chat
echo      or
echo      kimi web
echo.
echo   2. Say one of:
echo      explore     - Quick prototype first
echo      consult     - Standard workflow
echo      fast-track  - Express mode
echo.
echo   3. The consulting workflow will activate
echo.
echo For updates, re-run this installer.
echo.
pause
exit /b 0
