variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the storage account will be created."
}

variable "location" {
  type        = string
  description = "The Azure region where the storage account will be located."
}