#!/bin/bash
set -e

echo "===== DATE ====="
date

echo "===== OS ====="
lsb_release -a 2>/dev/null || cat /etc/os-release

echo "===== ANSIBLE ====="
ansible --version | head -5

echo "===== OPENSCAP ====="
oscap --version | head -10

echo "===== ANSIBLE SYNTAX CHECK ====="
ansible-playbook -i inventory.ini harden_system.yml --syntax-check

echo "===== ANSIBLE PING ====="
ansible -i inventory.ini local -m ping

echo "===== SSH HARDENING ====="
sudo cat /etc/ssh/sshd_config.d/99-hardening.conf
sudo sshd -t && echo "SSH configuration syntax OK"

echo "===== UFW STATUS ====="
sudo ufw status verbose

echo "===== FILE PERMISSIONS ====="
stat -c "%a %U %G %n" /etc/passwd /etc/shadow

echo "===== AUDITD STATUS ====="
systemctl is-enabled auditd || true
systemctl is-active auditd || true

echo "===== LEGACY SERVICES ====="
systemctl is-active telnet nfs-server rpcbind 2>/dev/null || true

echo "===== COMPLIANCE VALIDATION REPORT ====="
cat compliance-validation-report.txt
