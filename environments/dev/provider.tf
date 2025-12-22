terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "stg_rg"
    storage_account_name  = "stgbckup"
    container_name        = "stgcntnr"
    key                   = "dev.terraform.tfstate"
    
  }
}

provider "azurerm" {
    features {}
    subscription_id = "722e98bb-a107-4d7c-8537-ba8c2f35547f"
}
