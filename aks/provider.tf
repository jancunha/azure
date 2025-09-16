terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.1"
    }
  }
  cloud {
    organization = "nethaus"
    workspaces {
      name = "aks"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}