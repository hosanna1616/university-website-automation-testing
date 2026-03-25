@echo off
echo ========================================
echo DTU Website Test Suite - Portable Maven
echo ========================================
echo.

set MAVEN_HOME=%~dp0maven-portable\apache-maven-3.9.6
set PATH=%MAVEN_HOME%\bin;%PATH%

if not exist "%MAVEN_HOME%\bin\mvn.cmd" (
    echo ERROR: Maven not found at %MAVEN_HOME%
    echo Please ensure Maven is extracted in maven-portable folder
    pause
    exit /b 1
)

echo Using Maven from: %MAVEN_HOME%
echo.

echo Cleaning previous build...
call "%MAVEN_HOME%\bin\mvn.cmd" clean

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Maven clean failed!
    pause
    exit /b 1
)

echo.
echo Running tests...
echo This will download dependencies on first run (may take a few minutes)
echo.
call "%MAVEN_HOME%\bin\mvn.cmd" test

echo.
echo ========================================
echo Test execution completed!
echo ========================================
echo.
echo Check the output above for DEFECT information
echo Detailed reports: target\surefire-reports\
echo.
pause

