resource "azurerm_resource_group" "this" {
  name     = "ModuleResourceGroup"
  location = "southindia"
}

module "storage" {
  source              = "./Storage"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
}

module "network" {
  source              = "./Network"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
}