terraform {
  backend "azurerm" {
    
    source  = "hashicorp/azurerm"
    version = "=2.46.0" 
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3457d5d0-1535-40c6-85fb-cb1919104698"
  
 }

resource "azurerm_resource_group" "test" {
  name              = "store_qwerty"
  location          = "Australia East"
}

resource "azurerm_storage_account" "test" {
  name = "mystorageaccountqaz321"
  resource_group_name = azurerm_resource_group.test.name
  location = azurerm_resource_group.test.location
  account_replication_type = "LRS"
  account_tier = "standard"
}





