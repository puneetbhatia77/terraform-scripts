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
}

resource "azurerm_resource_group" "rg" {
  name     = "myTF-RG-skillup"
  location = "eastus2"

  tags = {
    Environment = "Development Environment"
    Team        = "DevOps"
  }
}



