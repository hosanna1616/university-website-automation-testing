# 🚀 Start Here - DTU Website Testing

## ✅ What's Ready

Your test suite is **100% ready** with:
- ✅ 15+ test cases identifying defects
- ✅ Maven project configuration
- ✅ Selenium WebDriver setup
- ✅ TestNG test framework
- ✅ Automatic browser driver management

## ⚠️ What You Need

**Maven** must be installed to run the tests.

## 📋 Quick Installation (Choose One)

### Option A: Chocolatey (Fastest - 2 minutes)

1. **Open PowerShell as Administrator** (Right-click → Run as Administrator)
2. Run: `choco install maven -y`
3. Close and reopen terminal
4. Done! ✅

### Option B: Manual Download (5 minutes)

1. Download: https://maven.apache.org/download.cgi
   - Get: `apache-maven-3.9.6-bin.zip`
2. Extract to: `C:\tools\apache-maven-3.9.6`
3. Add to PATH: `C:\tools\apache-maven-3.9.6\bin`
   - Win+R → `sysdm.cpl` → Advanced → Environment Variables → Edit Path
4. Restart terminal

## 🎯 Run Tests & See Defects

Once Maven is installed:

```bash
cd C:\Users\Hp\Downloads\testing
mvn clean test
```

**OR** double-click: `run-tests-with-maven.bat`

## 📊 Viewing Defect Information

The console will show defect information like this:

```
DEFECT #1 - Page Title: [title]
DEFECT #2 - Found 25 navigation links
DEFECT #4 IDENTIFIED: 5 images are missing alt text attributes
DEFECT #5 IDENTIFIED: Meta description tag is completely missing
DEFECT #7 IDENTIFIED: Viewport meta tag is missing
```

## 📁 Test Reports

After running, check:
- **Console output** - Real-time defect information
- **target/surefire-reports/** - Detailed HTML reports

## 🐛 Defects Being Tested

The suite tests for 15+ defects including:
1. Page title issues
2. Broken navigation links  
3. Missing contact info
4. Images without alt text
5. Missing meta description
6. Missing search functionality
7. Missing viewport (mobile issues)
8. Slow page load
9. Invalid external links
10. Form issues
11. Poor heading structure
12. Missing language attribute
13. Missing favicon
14. Browser compatibility
15. CSS loading problems

## ❓ Need Help?

- See `INSTALL_MAVEN.md` for detailed Maven installation
- See `README.md` for project documentation
- See `DEFECT_REPORT.md` for defect details

---

**Next Step:** Install Maven using Option A or B above, then run `mvn clean test`

