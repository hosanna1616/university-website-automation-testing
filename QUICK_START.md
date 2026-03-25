# Quick Start Guide - Running DTU Website Tests

## Option 1: Install Maven via Chocolatey (Recommended - Requires Admin)

1. **Open PowerShell or Command Prompt as Administrator**
2. Run: `choco install maven -y`
3. Close and reopen your terminal
4. Verify: `mvn --version`
5. Run tests: `mvn clean test`

## Option 2: Manual Maven Installation

1. **Download Maven:**
   - Go to: https://maven.apache.org/download.cgi
   - Download: `apache-maven-3.9.6-bin.zip`

2. **Extract Maven:**
   - Extract to: `C:\Program Files\Apache\maven` (or any location)

3. **Set Environment Variables:**
   - Add `MAVEN_HOME` = `C:\Program Files\Apache\maven`
   - Add to PATH: `%MAVEN_HOME%\bin`

4. **Verify Installation:**
   ```bash
   mvn --version
   ```

5. **Run Tests:**
   ```bash
   mvn clean test
   ```

## Option 3: Use Maven from Project Directory (No Installation)

If you have Maven downloaded but not in PATH:

1. Download Maven to project folder: `testing/maven/apache-maven-3.9.6/`
2. Run: `maven\apache-maven-3.9.6\bin\mvn.cmd clean test`

## Running the Tests

Once Maven is installed:

```bash
# Navigate to project directory
cd C:\Users\Hp\Downloads\testing

# Clean and run all tests
mvn clean test

# Or use the provided script
run-tests.bat
```

## Viewing Defect Information

The tests will output defect information directly to the console. Look for lines starting with:
- `DEFECT #1 -`
- `DEFECT #2 -`
- etc.

Example output:
```
DEFECT #1 - Page Title: Debre Tabor University
DEFECT #4 IDENTIFIED: 5 images are missing alt text attributes
```

## Troubleshooting

### "mvn: command not found"
- Maven is not installed or not in PATH
- Follow Option 1 or 2 above

### "JAVA_HOME is not set"
- Set JAVA_HOME to your Java installation directory
- Example: `set JAVA_HOME=C:\Program Files\Java\jdk-23`

### Tests fail to start browser
- Ensure Chrome browser is installed
- WebDriverManager will download ChromeDriver automatically

### Permission errors
- Run terminal as Administrator
- Or install Maven to a user directory instead of Program Files

