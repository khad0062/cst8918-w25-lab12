
output "resource_group_name" {
  description = "Name of the resource group containing the storage account"
  value       = azurerm_resource_group.backend.name
}

output "storage_account_name" {
  description = "Name of the storage account for Terraform state"
  value       = azurerm_storage_account.tfstate.name
}

output "container_name" {
  description = "Name of the storage container for Terraform state files"
  value       = azurerm_storage_container.tfstate.name
}

output "arm_access_key" {
  description = "Primary access key for the storage account (sensitive)"
  value       = azurerm_storage_account.tfstate.primary_access_key
  sensitive   = true
}
