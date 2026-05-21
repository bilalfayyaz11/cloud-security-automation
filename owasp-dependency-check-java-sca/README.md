# Java Dependency Vulnerability Scanning with OWASP Dependency-Check

## Objectives
- Build a Maven-based Java application with intentionally vulnerable dependencies.
- Scan application dependencies using OWASP Dependency-Check.
- Identify Critical, High, Medium, and Low CVE findings.
- Remediate vulnerable dependencies by upgrading package versions.
- Re-scan the project to validate risk reduction.

## Tools Used
- Ubuntu 24.04
- Java 17
- Apache Maven
- OWASP Dependency-Check 12.2.2
- Python 3
- JSON / HTML security reports

## Key Skills Demonstrated
- Software Composition Analysis
- Java dependency security scanning
- Maven dependency management
- CVE identification and severity analysis
- Dependency remediation workflow
- DevSecOps vulnerability reporting

## Troubleshooting Log
- Replaced outdated Java 11 setup with Java 17 for Ubuntu 24.04 compatibility.
- Replaced outdated Dependency-Check 6.3.2 with Dependency-Check 12.2.2.
- Fixed weak initial scan by adding Log4j 2.14.1 as a stronger vulnerable dependency.
- Fixed incorrect scan scope by scanning actual Maven dependency JARs.
- Cleaned old Maven cache to prevent stale vulnerable dependencies from appearing in remediation results.
- Verified that Critical Log4j and Spring Core findings were reduced after dependency upgrades.

## Scan Results Summary
Initial vulnerable scan identified Critical vulnerabilities including:
- CVE-2021-44228 in Log4j Core 2.14.1
- CVE-2021-45046 in Log4j Core 2.14.1
- CVE-2022-22965 in Spring Core 5.0.0.RELEASE

Remediation upgraded:
- Log4j Core from 2.14.1 to 2.25.2
- Spring Core from 5.0.0.RELEASE to 5.3.39

Final scan confirmed the application artifact had zero direct vulnerabilities.
