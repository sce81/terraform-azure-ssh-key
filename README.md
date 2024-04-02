# terraform-azure-ssh-key
### All code is provided for reference purposes only and is used entirely at own risk. Code is for use in development environments only. Not intended for Production use. 


Terraform module for creating an SSH key for use on Azure Platform  


## Usage

    module "example" {
      source = "git@github.com:sce81/terraform-azure-ssh-key.git"
      environment    = "dev"
      name           = "example"
      resource_group = data.azurerm_resource_group.example.name
      keyvault       = module.example_keyvault.id
    }


### Prerequisites

Terraform ~> 1.7.0  

### Tested

Terraform ~> 1.7.0  

### Outputs

    tls_private_key: value  = tls_private_key.main.private_key_pem 
    tls_public_key: value   = tls_private_key.main.public_key_pem
    tls_public_key_openssh: = tls_private_key.main.public_key_openssh
    name:                   = azurerm_ssh_public_key.main.name