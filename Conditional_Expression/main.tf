resource "azurerm_resource_group" "development" {
    count = var.is_dev_true == true ? 1 : 0
  name     = "rg-development"
  location = "southindia"
}

resource "azurerm_resource_group" "production" {
    count = var.is_dev_true == false ? 1 : 0
  name     = "rg-production"
  location = "southindia"
  
}