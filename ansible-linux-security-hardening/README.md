# Linux Security Hardening Automation with Ansible

## Objectives

This project demonstrates how to automate Linux system hardening using Ansible and validate security controls with command-line evidence collection.

The objective was to apply repeatable security configuration across a Linux system, reduce risky defaults, harden SSH access, enable firewall protection, verify sensitive file permissions, and document compliance validation evidence.

## Tools Used

- Ansible Core
- OpenSCAP Scanner
- UFW
- auditd
- systemd
- Bash
- Ubuntu Linux

## Key Skills Demonstrated

- Linux system hardening automation
- Ansible playbook development
- Local inventory configuration
- SSH security configuration
- Firewall rule automation
- File permission hardening
- Service hardening
- Compliance evidence collection
- Troubleshooting outdated Linux security packages

## Security Controls Implemented

### SSH Hardening

- Disabled password-based SSH authentication
- Restricted root login to key-based access only
- Disabled X11 forwarding
- Limited SSH authentication attempts
- Added idle session timeout controls

### Firewall Hardening

- Enabled UFW
- Set default incoming policy to deny
- Explicitly allowed OpenSSH before enabling firewall

### File Permission Hardening

- Set `/etc/passwd` ownership to `root:root`
- Set `/etc/passwd` permissions to `0644`
- Set `/etc/shadow` ownership to `root:shadow`
- Set `/etc/shadow` permissions to `0640`

### Service Hardening

Attempted to stop and disable legacy risky services where present:

- telnet
- nfs-server
- rpcbind

### Audit Hardening

- Installed auditd
- Enabled auditd service
- Verified auditd runtime status

## Validation Workflow

The following validation steps were automated:

```bash
ansible-playbook -i inventory.ini harden_system.yml --syntax-check
ansible -i inventory.ini local -m ping
sudo sshd -t
sudo ufw status verbose
stat -c "%a %U %G %n" /etc/passwd /etc/shadow
systemctl is-enabled auditd
systemctl is-active auditd
