# Linux Intrusion Detection with Wazuh

## Objectives

This project implements a host-based intrusion detection system (HIDS) using Wazuh on Ubuntu Linux. The environment was configured to monitor authentication events, detect SSH brute-force activity, and generate security alerts through custom IDS rules.

## Tools Used

- Wazuh
- Linux (Ubuntu 24.04)
- OpenSSH
- Syslog
- systemd
- Bash
- MITRE ATT&CK Framework

## Key Skills Demonstrated

- Security monitoring
- Intrusion detection system configuration
- SSH authentication monitoring
- Linux log analysis
- Custom Wazuh rule creation
- Threat detection engineering
- SOC alert analysis
- Blue-team defensive operations
- MITRE ATT&CK mapping

## Detection Workflow

1. Installed and configured Wazuh Manager
2. Configured local SSH monitoring
3. Created custom brute-force detection rule
4. Simulated SSH authentication attacks
5. Verified IDS alert generation
6. Reviewed security alerts and logs

## Troubleshooting Log

### Deprecated Repository Key Handling
Replaced deprecated `apt-key add` with modern GPG keyring configuration compatible with Ubuntu 24.04.

### Wazuh Rule Syntax Error
Fixed invalid XML structure where `frequency` and `timeframe` were incorrectly used as child tags instead of rule attributes.

### Cloud SSH Logging Limitation
AWS EC2 SSH configuration prevented natural failed authentication logging. Simulated authentication events using `logger` for IDS validation testing.

## Security Concepts Covered

- Host Intrusion Detection Systems (HIDS)
- SSH brute-force detection
- Log ingestion and analysis
- Rule-based threat detection
- Security event monitoring
- Threat classification
- SOC operations
