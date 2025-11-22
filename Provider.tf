terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # NOTE: To use this, you must first manually create the Azure Resource Group, 
  # Storage Account, and Container for the backend state.
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"    # Replace with your pre-created RG name
    storage_account_name = "terraformstatestorage890"  # Replace with your unique SA name
    container_name       = "labtest"               # Container name inside SA
    key                  = "project2.terraform.tfstate" # The filename of the state
  }
}

provider "azurerm" {
  features {} 
}