terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  required_version = "~> 1.12.0"

  backend "azurerm" {
    resource_group_name  = "sampleResourceGroup"
    storage_account_name = "kirstenpioneer"
    container_name       = "pioneerofcloud"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {

  }
}
