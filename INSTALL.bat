@echo off
REM Consultancy Skill Installation Script for Windows
REM Installs skill files to the user's Kimi CLI skills directory

echo ============================================
echo   Consultancy Skill Installer
echo   v6.1
echo ============================================
echo.

REM Set source directory (where this script is)
set "SOURCE_DIR=%~dp0"
set "SOURCE_DIR=%SOURCE_DIR:~0,-1%"

REM Determine target skills directory
set "TARGET_DIR=%USERPROFILE%\.config\agents\skills\consultancy"

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

if not exist "%SOURCE_DIR%\domains.yaml" (
    echo ERROR: domains.yaml not found in source directory
    pause
    exit /b 1
)

REM Create target directory structure
echo Creating directory structure...
if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%" 2>nul
    if errorlevel 1 (
        echo ERROR: Failed to create directory %TARGET_DIR%
        pause
        exit /b 1
    )
)

if not exist "%TARGET_DIR%\sub-skills" mkdir "%TARGET_DIR%\sub-skills" 2>nul
if not exist "%TARGET_DIR%\protocols" mkdir "%TARGET_DIR%\protocols" 2>nul
if not exist "%TARGET_DIR%\templates" mkdir "%TARGET_DIR%\templates" 2>nul
if not exist "%TARGET_DIR%\specialists" mkdir "%TARGET_DIR%\specialists" 2>nul

REM Copy user preferences (personalized for this user)
echo Setting up user preferences...
copy /Y "%SOURCE_DIR%\user-preferences.yaml" "%TARGET_DIR%\user-preferences.yaml" >nul

REM Copy main skill files
echo Installing main skill files...
copy /Y "%SOURCE_DIR%\SKILL.md" "%TARGET_DIR%\" >nul
copy /Y "%SOURCE_DIR%\README.md" "%TARGET_DIR%\" >nul
copy /Y "%SOURCE_DIR%\domains.yaml" "%TARGET_DIR%\" >nul
copy /Y "%SOURCE_DIR%\skill-manifest.yaml" "%TARGET_DIR%\" >nul
copy /Y "%SOURCE_DIR%\TERSE_SUMMARY.md" "%TARGET_DIR%\" >nul

REM Copy sub-skills
echo Installing sub-skills...
copy /Y "%SOURCE_DIR%\sub-skills\core-sub-skill.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\phase-discovery.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\phase-design.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\phase-build.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\phase-validate.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\phase-deliver.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\phase-transition-protocol.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\domain-software.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\domain-manufacturing.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\domain-fashion.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\domain-enterprise.md" "%TARGET_DIR%\sub-skills\" >nul
copy /Y "%SOURCE_DIR%\sub-skills\patterns-composability.md" "%TARGET_DIR%\sub-skills\" >nul

REM Copy protocols
echo Installing protocols...
copy /Y "%SOURCE_DIR%\protocols\handoff.md" "%TARGET_DIR%\protocols\" >nul
copy /Y "%SOURCE_DIR%\protocols\final-qa.md" "%TARGET_DIR%\protocols\" >nul

REM Copy templates
echo Installing templates...
copy /Y "%SOURCE_DIR%\templates\maker-task.md" "%TARGET_DIR%\templates\" >nul
copy /Y "%SOURCE_DIR%\templates\validator-task.md" "%TARGET_DIR%\templates\" >nul
copy /Y "%SOURCE_DIR%\templates\aligner-task.md" "%TARGET_DIR%\templates\" >nul

REM Copy specialists
echo Installing specialists...
copy /Y "%SOURCE_DIR%\specialists\requirements-analyst.md" "%TARGET_DIR%\specialists\" >nul
copy /Y "%SOURCE_DIR%\specialists\security-developer.md" "%TARGET_DIR%\specialists\" >nul
copy /Y "%SOURCE_DIR%\specialists\performance-developer.md" "%TARGET_DIR%\specialists\" >nul

echo.
echo ============================================
echo   Installation Complete!
echo ============================================
echo.
echo Consultancy Skill v6.1 installed to:
echo   %TARGET_DIR%
echo.
echo Directory structure:
echo   - Main skill files (SKILL.md, README.md, etc.)
echo   - sub-skills/ (phases, domains, patterns)
echo   - protocols/ (handoff, final-qa)
echo   - templates/ (maker, validator, aligner tasks)
echo   - specialists/ (spawn-on-demand roles)
echo   - user-preferences.yaml (personalized settings)
echo.
echo To use Consultancy Skill:
echo.
echo   1. Start Kimi CLI:
echo      kimi chat
echo      or
echo      kimi web
echo.
echo   2. Say one of:
echo      consult      - Standard 6-phase workflow
echo      explore      - Quick prototype first
echo      fast-track   - Express mode
echo.
echo   3. The consulting workflow will activate
echo.
echo.
echo Personalization:
echo   Edit user-preferences.yaml to add your preferences.
echo   The AI will learn and apply these automatically.
echo.
echo For updates, re-run this installer.
echo.
pause
exit /b 0
