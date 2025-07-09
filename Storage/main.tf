resource "azurerm_resource_group" "name" {
  name     = "sampleResourceGroup"
  location = "southindia"
}

resource "azurerm_storage_account" "logical_account" {
  name                     = "kpop69storageaccount"
  resource_group_name      = azurerm_resource_group.name.name
  location                 = azurerm_resource_group.name.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "Development"
  }
}

resource "azurerm_storage_container" "logical_container" {
  name                  = "kpop69container"
  container_access_type = "blob"
  storage_account_id    = azurerm_storage_account.logical_account.id
}



