
terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # Backend configuration for remote state storage
  backend "azurerm" {
    resource_group_name  = "khad0062-githubactions-rg"
    storage_account_name = "khad0062githubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true
  }
}


provider "azurerm" {
  features {}
  use_oidc = true
}
