# outputs.tf
# Outputs let you see useful information after Terraform runs.
# After "terraform apply", these values are printed in the terminal.
# They're also useful for passing values between Terraform modules later.

output "resource_group_name" {
  description = "The name of the created resource group"
  value       = azurerm_resource_group.learning.name
}

output "resource_group_location" {
  description = "The Azure region where the resource group was created"
  value       = azurerm_resource_group.learning.location
}

output "resource_group_id" {
  description = "The unique Azure ID of the resource group"
  value       = azurerm_resource_group.learning.id
}
