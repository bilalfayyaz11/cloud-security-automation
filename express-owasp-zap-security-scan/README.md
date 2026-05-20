# Serverless API Security Testing with OWASP ZAP

## Objectives

This project simulates a serverless-style HTTP API using Node.js and Express, then performs automated security testing with OWASP ZAP. The goal is to identify insecure input handling, apply security controls, and validate improvements through a follow-up scan.

## Tools Used

- Node.js
- npm
- Express.js
- Helmet
- express-rate-limit
- xss
- OWASP ZAP
- ZAP API
- curl
- Linux
- Bash

## Key Skills Demonstrated

- Building a lightweight API service with Node.js and Express
- Simulating serverless-style HTTP function behavior locally
- Running OWASP ZAP in daemon mode for headless security testing
- Using the ZAP API to automate spidering, active scans, and report generation
- Identifying reflected input risks in API responses
- Applying HTTP security headers with Helmet
- Implementing basic rate limiting for API abuse protection
- Sanitizing user-controlled input to reduce XSS risk
- Producing before-and-after security scan evidence

## Implementation Summary

The application exposes a GET endpoint and a POST endpoint that accepts JSON input. The first version intentionally reflected user input directly in the response so it could be scanned for insecure behavior.

OWASP ZAP was launched in daemon mode and controlled through API calls. The scan workflow included spidering the target, running an active scan, and exporting HTML and JSON reports.

After the first scan, the application was hardened using Helmet, express-rate-limit, and input sanitization with the xss package. A second ZAP scan was then executed to validate the secured version.

## Troubleshooting Log

### Outdated ZAP Installation Method

The original instruction used:

```bash
sudo apt install owasp-zap
