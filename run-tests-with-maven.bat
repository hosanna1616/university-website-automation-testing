@echo off
echo ========================================
echo DTU Website Test Suite
echo ========================================
echo.

REM Try to find Maven in common locations
set MAVEN_CMD=

REM Check if mvn is in PATH
where mvn >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set MAVEN_CMD=mvn
    goto :found
)

REM Check for portable Maven in project directory
if exist "%~dp0maven\apache-maven-3.9.6\bin\mvn.cmd" (
    set MAVEN_CMD=%~dp0maven\apache-maven-3.9.6\bin\mvn.cmd
    goto :found
)

REM Check for Maven in Program Files
if exist "C:\Program Files\Apache\maven\bin\mvn.cmd" (
    set MAVEN_CMD=C:\Program Files\Apache\maven\bin\mvn.cmd
    goto :found
)

REM Maven not found
echo ERROR: Maven not found!
echo.
echo Please install Maven first:
echo 1. Run: choco install maven -y (as Administrator)
echo    OR
echo 2. Download from: https://maven.apache.org/download.cgi
echo    Extract and add to PATH
echo.
echo See INSTALL_MAVEN.md for detailed instructions
echo.
pause
exit /b 1

:found
echo Found Maven: %MAVEN_CMD%
echo.

echo Cleaning previous build...
call %MAVEN_CMD% clean

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Maven clean failed!
    echo Please check your Maven installation
    pause
    exit /b 1
)

echo.
echo Running tests...
echo This will download dependencies on first run (may take a few minutes)
echo.
call %MAVEN_CMD% test

echo.
echo ========================================
echo Test execution completed!
echo ========================================
echo.
echo Check the output above for DEFECT information
echo Detailed reports: target\surefire-reports\
echo.
pause

