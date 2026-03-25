@echo off
echo ========================================
echo DTU Website Test Suite Execution
echo ========================================
echo.

echo Cleaning previous build...
call mvn clean

echo.
echo Running tests...
call mvn test

echo.
echo ========================================
echo Test execution completed!
echo Check target/surefire-reports for detailed results
echo ========================================
pause

