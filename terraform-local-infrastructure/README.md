# Terraform Local Infrastructure Automation

## Objectives

This project demonstrates how Terraform can be used to define and manage local infrastructure configuration using Infrastructure as Code principles.

The objective was to create a repeatable local VM definition, generate infrastructure configuration automatically, and validate the workflow using Terraform commands.

## Tools Used

- Terraform
- Vagrant
- VirtualBox
- Ubuntu Linux
- Bash
- HashiCorp Local Provider

## Key Skills Demonstrated

- Infrastructure as Code workflow design
- Terraform provider configuration
- Terraform initialization, formatting, validation, planning, and apply workflow
- Local infrastructure definition generation
- Vagrant-based VM configuration
- VirtualBox infrastructure modeling
- Bash-based validation automation
- Troubleshooting platform-level virtualization limitations

## Architecture

Terraform manages a local infrastructure definition by generating a Vagrantfile.  
The generated Vagrantfile defines a VirtualBox VM with:

- Ubuntu Jammy base image
- 2 CPUs
- 1024 MB memory
- Private network IP: 192.168.56.20
- Apache2 provisioning script

## Validation

The following workflow was completed successfully:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply -auto-approve
terraform output
