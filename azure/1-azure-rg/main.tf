terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "be40f85a-7ca1-48fb-bfb5-11fe1320e9a8"
}

resource "azurerm_resource_group" "rg" {
  name     = "myTF-RG-skillup"
  location = "eastus2"

  tags = {
    Environment = "Development Environment"
    Team        = "DevOps"
  }
}



