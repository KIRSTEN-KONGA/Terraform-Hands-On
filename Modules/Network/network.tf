resource "azurerm_virtual_network" "this" {
  name                = "myvnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = ["192.168.0.0/16"]
}
