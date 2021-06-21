terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "test" {
  name              = "store_rg"
  location          = "Australia East"
}

resource "azurerm_storage_account" "test" {
  name = "mystorageaccount"
  resource_group_name = azurerm_resource_group.test.name
  account_replication_type = "GRS"
  account_tier = "standard"
}

tags={
  enviornment = "developement"
}

