# DTU Website Testing Suite

This project contains automated test cases for the Debre Tabor University (DTU) website using Maven, Selenium WebDriver, and TestNG.

## Project Structure

```
.
├── pom.xml
├── testng.xml
├── README.md
└── src/
    └── test/
        └── java/
            └── com/
                └── testing/
                    └── whitebox/
                        ├── BaseTest.java
                        ├── HomePageTest.java
                        ├── FunctionalTest.java
                        ├── UsabilityTest.java
                        └── CompatibilityTest.java
```

## Prerequisites

- Java 11 or higher
- Maven 3.6 or higher
- Chrome browser (latest version)
- Internet connection

## Setup Instructions

1. **Clone or download this project**

2. **Install dependencies:**
   ```bash
   maven clean install
   ```

3. **Run all tests:**
   ```bash
   mvn test
   ```

4. **Run specific test class:**
   ```bash
   mvn test -Dtest=FunctionalTest
   ```

5. **Run with TestNG suite:**
   ```bash
   mvn test
   ```

## Test Coverage

### Functional Tests (FunctionalTest.java)
- DEFECT #1: Home page title validation
- DEFECT #2: Navigation links functionality
- DEFECT #3: Contact information presence
- DEFECT #4: Image alt text (accessibility)
- DEFECT #5: Meta description
- DEFECT #6: Search functionality
- DEFECT #7: Responsive design (viewport)
- DEFECT #8: Page load performance
- DEFECT #9: External links validation
- DEFECT #10: Contact forms

### Usability Tests (UsabilityTest.java)
- DEFECT #11: Heading structure (H1, H2)
- DEFECT #12: Language attribute
- DEFECT #13: Favicon presence

### Compatibility Tests (CompatibilityTest.java)
- DEFECT #14: Chrome browser compatibility
- DEFECT #15: CSS loading

### Home Page Tests (HomePageTest.java)
- Basic page load validation
- URL verification
- Page source validation

## Identified Defects

The test suite is designed to identify at least 7+ defects including:

1. **Missing or empty page title**
2. **Broken navigation links**
3. **Missing contact information**
4. **Images without alt text (accessibility)**
5. **Missing or incomplete meta description**
6. **Missing search functionality**
7. **Missing viewport meta tag (mobile responsiveness)**
8. **Slow page load performance**
9. **Invalid external links**
10. **Form validation issues**
11. **Poor heading structure (SEO)**
12. **Missing language attribute**
13. **Missing favicon**
14. **Browser compatibility issues**
15. **CSS loading problems**

## Test Execution

Tests are executed using TestNG framework. The test results will show:
- Passed tests
- Failed tests (defects identified)
- Execution time
- Detailed console output for each defect

## Notes

- Tests include delays to allow page elements to load
- WebDriverManager automatically downloads and manages browser drivers
- All tests extend BaseTest for common setup/teardown
- Tests are designed to identify defects, so some assertions may fail intentionally

## Reporting

Test results are generated in:
- Console output (detailed defect information)
- `target/surefire-reports/` directory (TestNG reports)

