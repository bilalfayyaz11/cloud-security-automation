#!/bin/bash
set -e

echo "===== ANSIBLE VERSION ====="
ansible --version | head -5

echo "===== INVENTORY CHECK ====="
ansible -i inventory.ini local -m ping

echo "===== SSH HARDENING CONFIG ====="
sudo cat /etc/ssh/sshd_config.d/99-hardening.conf

echo "===== SSH CONFIG VALIDATION ====="
sudo sshd -t && echo "SSH configuration syntax OK"

echo "===== FIREWALL STATUS ====="
sudo ufw status verbose

echo "===== FILE PERMISSIONS ====="
stat -c "%a %U %G %n" /etc/passwd /etc/shadow

echo "===== SERVICE STATUS CHECK ====="
systemctl is-enabled auditd || true
systemctl is-active auditd || true
systemctl is-active telnet nfs-server rpcbind 2>/dev/null || true
