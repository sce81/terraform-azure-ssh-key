resource "tls_private_key" "main" {
  algorithm = "RSA"
  rsa_bits  = "2048"
}

resource "azurerm_ssh_public_key" "main" {
  name                = "${var.name}-ssh-key"
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
  public_key          = tls_private_key.main.public_key_openssh

  tags = merge(
    local.common_tags, var.extra_tags,
    tomap({
      Name = "${var.name}-ssh-key"
    })
  )
}

resource "azurerm_key_vault_secret" "private_key" {
  count = local.store_secret
  name  = "${var.name}-ssh-key"
  value = tls_private_key.main.private_key_openssh
  key_vault_id = var.keyvault
}