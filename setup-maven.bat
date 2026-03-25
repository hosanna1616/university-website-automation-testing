@echo off
echo ========================================
echo Maven Setup Script for DTU Testing
echo ========================================
echo.

set MAVEN_VERSION=3.9.6
set MAVEN_DIR=%~dp0maven
set MAVEN_ZIP=%MAVEN_DIR%\apache-maven-%MAVEN_VERSION%-bin.zip

if exist "%MAVEN_DIR%\apache-maven-%MAVEN_VERSION%\bin\mvn.cmd" (
    echo Maven already installed at %MAVEN_DIR%
    set PATH=%MAVEN_DIR%\apache-maven-%MAVEN_VERSION%\bin;%PATH%
    goto :test
)

echo Creating Maven directory...
if not exist "%MAVEN_DIR%" mkdir "%MAVEN_DIR%"

echo.
echo Please download Maven manually:
echo 1. Go to: https://maven.apache.org/download.cgi
echo 2. Download: apache-maven-%MAVEN_VERSION%-bin.zip
echo 3. Extract it to: %MAVEN_DIR%
echo 4. Run this script again
echo.
echo OR run: choco install maven -y (as Administrator)
echo.
pause
exit /b 1

:test
echo.
echo Testing Maven installation...
call mvn --version
if %ERRORLEVEL% NEQ 0 (
    echo Maven test failed!
    pause
    exit /b 1
)

echo.
echo ========================================
echo Maven setup complete!
echo ========================================
echo.
echo You can now run: mvn clean test
echo.

