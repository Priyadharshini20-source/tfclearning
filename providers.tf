terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "firstrg"
    storage_account_name = "tfcstrg1"
    container_name       = "tfc-container1"
    key                  = "terraform.tfstate"
  }  
}
provider "azurerm" {
  # Configuration options
}
