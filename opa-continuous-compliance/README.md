# Continuous Compliance Checking with Open Policy Agent

## Objectives

This project implements automated compliance validation inside a CI/CD pipeline using Jenkins and Open Policy Agent (OPA). The pipeline validates cloud deployment metadata before simulated deployment execution.

## Tools Used

- Jenkins
- Open Policy Agent (OPA)
- Rego
- Java 21
- Ubuntu Linux
- Bash
- JSON

## Key Skills Demonstrated

- Policy-as-Code
- CI/CD security automation
- Continuous compliance enforcement
- OPA/Rego policy development
- Jenkins pipeline engineering
- Deployment governance
- Infrastructure validation
- DevSecOps automation
- Compliance gate implementation

## Workflow

1. Installed Jenkins CI/CD server
2. Installed and configured OPA
3. Created Rego compliance policies
4. Defined compliant deployment input
5. Defined non-compliant deployment input
6. Integrated OPA checks into Jenkins pipeline
7. Implemented automated deployment approval logic
8. Simulated policy enforcement inside CI/CD workflow

## Compliance Rules

The pipeline validates that every deployment resource contains:
- environment tag
- owner tag

Deployments missing required tags are denied automatically.

## Troubleshooting Log

### Jenkins Repository Key Failure
Updated Jenkins repository signing key to the 2026 Jenkins signing key after GPG validation failure.

### Outdated Java Runtime
Replaced Java 11 with Java 21 for modern Jenkins compatibility.

### Deprecated OPA Policy Syntax
Updated legacy Rego syntax to Rego v1 compatible syntax using `deny contains reason if`.

## Security Concepts Covered

- Policy-as-Code
- Continuous compliance
- Deployment governance
- CI/CD security gates
- Infrastructure validation
- Automated policy enforcement
- DevSecOps controls
