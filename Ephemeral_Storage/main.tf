data "azurerm_client_config" "name" {}

resource "azurerm_resource_group" "this" {
  name     = "KeyVaultEphemeral2082"
  location = "southindia"
}

resource "azurerm_key_vault" "this" {
  name                = "KeyVaultEphemeral2082"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  tenant_id           = data.azurerm_client_config.name.tenant_id
  sku_name            = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.name.tenant_id
    object_id = data.azurerm_client_config.name.object_id

    key_permissions = [
      "List",
    ]

    secret_permissions = [
      "Get",
      "List",
      "Set",
    ]
  }

}

resource "azurerm_key_vault_secret" "first_secret" {
  key_vault_id = azurerm_key_vault.this.id
  name         = "MyFirstSecret"
  value        = var.secret_value
}

data "azurerm_key_vault_secret" "second_secret" {
  key_vault_id = azurerm_key_vault.this.id
  name         = "secret-for-real-this-time"

}

ephemeral "azurerm_key_vault_secret" "top_secret" {
  key_vault_id = azurerm_key_vault.this.id
  name         = "confidential"

}