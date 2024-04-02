data "azurerm_resource_group" "main" {
  name = var.resource_group
}
locals {
  common_tags = {
    Environment = var.environment
    Terraform   = "true"
  }
  store_secret = var.store_secret == true ? 1 : 0

ssh_key = {
    private_key = tls_private_key.main.private_key_pem
    //public_key = tls_private_key.main.public_key_pem
}
}
