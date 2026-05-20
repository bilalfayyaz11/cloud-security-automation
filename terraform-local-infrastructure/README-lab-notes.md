# Terraform Local Infrastructure Notes

This lab uses Terraform to generate a Vagrantfile for a local VirtualBox VM.

The original direct VirtualBox Terraform provider is avoided because the available VirtualBox providers are experimental and unreliable in modern Terraform environments.

Terraform manages the infrastructure definition, while Vagrant handles the VirtualBox VM lifecycle.
