
# Main Terraform configuration for the app infrastructure
# This file contains the primary resources for the application

# Resource group for the application infrastructure
resource "azurerm_resource_group" "app" {
  name     = "khad0062-a12-rg"
  location = "East US"

  tags = {
    purpose     = "application-infrastructure"
    environment = "prod"
    created_by  = "terraform"
    lab         = "a12"
  }
}

# Virtual Network for the application
resource "azurerm_virtual_network" "app_vnet" {
  name                = "khad0062-a12-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.app.location
  resource_group_name = azurerm_resource_group.app.name

  tags = {
    purpose     = "application-networking"
    environment = "prod"
    created_by  = "terraform"
    lab         = "a12"
  }
}

# Subnet for the application
resource "azurerm_subnet" "app_subnet" {
  name                 = "khad0062-a12-subnet"
  resource_group_name  = azurerm_resource_group.app.name
  virtual_network_name = azurerm_virtual_network.app_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
