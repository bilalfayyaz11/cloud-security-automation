# Security Controls Implemented

## Firewall Hardening
- Enabled UFW.
- Default incoming policy set to deny.
- OpenSSH explicitly allowed before enabling firewall.

## SSH Hardening
- Disabled password authentication.
- Restricted root SSH login to key-based access only.
- Disabled X11 forwarding.
- Limited SSH authentication attempts.
- Added idle session timeout controls.

## File Permission Hardening
- /etc/passwd set to root:root 0644.
- /etc/shadow set to root:shadow 0640.

## Service Hardening
- Attempted to stop and disable legacy/risky services:
  - telnet
  - nfs-server
  - rpcbind

## Audit Hardening
- Installed and enabled auditd for system auditing.
