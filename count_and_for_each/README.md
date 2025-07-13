## Requirements

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
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/resource_group) | resource |
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.35.0/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_storage_account"></a> [storage\_account](#input\_storage\_account) | The name of the Azure Storage Account to be created. | `set(string)` | <pre>[<br/>  "countandforeach1",<br/>  "countandforeachsa2"<br/>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_storage_account_names"></a> [rg\_storage\_account\_names](#output\_rg\_storage\_account\_names) | n/a |
