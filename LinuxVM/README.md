## Created a Linux VM using admin_username and admin_password (You can also use ssh key-pair)
## In this VM, I have exposed port 80 (from NSG) and used apache2 webserver for hosting my content (http://<your_vm_public_ip>) 
## Declared the varaiable using command line -var="admin_password=<Your_password>" (You can also try environment variables or direclty mentioning in the variable.tf)
## Secure way to store is using azure key_vault of terraform vault (I have not used it)
## Check the output block for the public_ip (terraform output) 
## Don't forget to reduce you Azure bill (tf destroy) 

## Document generated using command (terraform-docs markdown table . > README.md) 

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.35.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/network_interface) | resource |
| [azurerm_network_security_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | The password for the admin user. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pub-ip"></a> [pub-ip](#output\_pub-ip) | n/a |
