# Output the Resource Group Name
output "resource_group_name" {
  description = "The name of the created Resource Group"
  value       = azurerm_resource_group.rg.name
}

# Output the Resource Group Location
output "resource_group_location" {
  description = "The location of the created Resource Group"
  value       = azurerm_resource_group.rg.location
}
