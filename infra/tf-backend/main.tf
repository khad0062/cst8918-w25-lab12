terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}


provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "backend" {
  name     = "khad0062-githubactions-rg"
  location = "East US"

  tags = {
    purpose     = "terraform-backend"
    environment = "shared"
    created_by  = "terraform"
  }
}

resource "azurerm_storage_account" "tfstate" {
  name                       = "khad0062githubactions"
  resource_group_name        = azurerm_resource_group.backend.name
  location                   = azurerm_resource_group.backend.location
  account_tier               = "Standard"
  account_replication_type   = "LRS"
  min_tls_version            = "TLS1_2"
  https_traffic_only_enabled = true
}


resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}
