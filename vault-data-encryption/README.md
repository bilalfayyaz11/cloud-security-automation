# Data Encryption with HashiCorp Vault

## Objectives

This project implements local data encryption using HashiCorp Vault Transit Engine. It demonstrates how sensitive data can be encrypted and decrypted without exposing encryption keys to applications or users.

## Tools Used

- HashiCorp Vault
- Vault Transit Secrets Engine
- Ubuntu Linux
- Bash
- Base64
- JSON
- Vault Policies
- Vault Tokens

## Key Skills Demonstrated

- Secrets management
- Encryption as a service
- Vault Transit Engine configuration
- Secure local data encryption
- Ciphertext storage
- Access control policy creation
- Limited token generation
- Encryption key rotation
- Cloud security automation fundamentals

## Workflow

1. Installed HashiCorp Vault using the official APT repository
2. Started Vault in local development mode
3. Enabled the Transit secrets engine
4. Created an AES-256 encryption key
5. Encrypted sensitive local data
6. Stored ciphertext separately from plaintext
7. Decrypted ciphertext back into readable data
8. Created a restricted Vault policy
9. Generated a limited-access Vault token
10. Rotated the encryption key

## Troubleshooting Log

### Outdated Vault Installation
The original lab used an old Vault ZIP version. This was replaced with the official HashiCorp APT repository for Ubuntu 24.04 compatibility.

### Invalid Vault Token
The placeholder root token caused permission denied errors. The real dev-mode root token was extracted from the Vault server output and exported correctly.

### Vault Address Protocol Issue
Vault CLI defaulted to HTTPS when `VAULT_ADDR` was unset. The issue was fixed by explicitly setting `VAULT_ADDR=http://127.0.0.1:8200`.

## Security Concepts Covered

- Encryption as a Service
- Centralized key management
- Secret protection
- Access control policies
- Token-based authentication
- Key rotation
- Least-privilege access
