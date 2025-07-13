resource "azurerm_resource_group" "this" {
  name     = "count-and-for-each-rg"
  location = "southindia"
}

resource "azurerm_storage_account" "this" {
  # count               = length(var.storage_account)
  # name                 = var.storage_account[count.index]
  
  # for_each                 = var.storage_account
  # name                     = each.value

  name= ""                  # mandatory field, must be unique across Azure, you can use any from above commented lines    
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "rg_storage_account_names" {
  value = [for i in azurerm_storage_account.this : i.name]
}