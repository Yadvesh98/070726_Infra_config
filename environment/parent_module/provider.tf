terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "stgbackendyy"
    resource_group_name  = "rgbackend"
    container_name       = "backend2container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9066053f-33e0-42c0-b836-7939deb5d608"
}
