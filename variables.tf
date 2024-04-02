variable "environment" {}
variable "name" {}
variable "resource_group" {}
variable "keyvault" {}
variable "store_secret" {
  type        = bool
  default     = true
  description = "Conditional whether to store private key in Azure Key Vault"
}

variable "extra_tags" {
  type        = map(any)
  default     = {}
  description = "Placeholder to allow for additional custom tags to be passed into the module from the environment in map format"
}