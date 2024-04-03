output "tls_private_key" {
  value = tls_private_key.main.private_key_pem
}

output "tls_public_key" {
  value = trimspace(tls_private_key.main.public_key_pem)
}

output "tls_public_key_openssh" {
  value = trimspace(tls_private_key.main.public_key_openssh)
}

output "tls_private_key_openssh" {
  value = tls_private_key.main.private_key_openssh
}

output "name" {
  value = azurerm_ssh_public_key.main.name
}
