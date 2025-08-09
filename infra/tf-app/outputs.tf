# Outputs for the app infrastructure configuration
# These values provide information about the created resources

output "resource_group_name" {
  description = "Name of the application resource group"
  value       = azurerm_resource_group.app.name
}

output "resource_group_location" {
  description = "Location of the application resource group"
  value       = azurerm_resource_group.app.location
}

output "resource_group_id" {
  description = "ID of the application resource group"
  value       = azurerm_resource_group.app.id
}
