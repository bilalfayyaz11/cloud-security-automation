#!/bin/bash
set -e

echo "===== TERRAFORM VERSION ====="
terraform version

echo "===== TERRAFORM VALIDATE ====="
terraform validate

echo "===== TERRAFORM OUTPUT ====="
terraform output

echo "===== GENERATED FILES ====="
ls -la

echo "===== VAGRANTFILE CHECK ====="
grep -E "terraform-local-vm|ubuntu/jammy64|192.168.56.20|apache2" Vagrantfile

echo "===== VALIDATION REPORT ====="
cat validation-report.txt
