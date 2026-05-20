path "transit/encrypt/my-encryption-key" {
  capabilities = ["create", "update"]
}

path "transit/decrypt/my-encryption-key" {
  capabilities = ["create", "update"]
}

path "transit/keys/my-encryption-key" {
  capabilities = ["read"]
}
