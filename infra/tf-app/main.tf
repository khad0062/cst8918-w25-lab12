
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
