# main.tf
# This is where you define the Azure resources you want to create.
# Today we're creating one resource: an Azure Resource Group.
#
# What is a Resource Group?
# In Azure, EVERY resource (VM, database, storage, etc.) must live inside
# a Resource Group. It's like a folder that groups related resources together.
# You can delete a Resource Group to delete everything inside it at once.

resource "azurerm_resource_group" "learning" {
  # "azurerm_resource_group" = the type of resource (defined by the Azure provider)
  # "learning"               = a local name used only inside Terraform to reference this resource

  name     = var.resource_group_name # Reads from variables.tf
  location = var.location            # Reads from variables.tf

  tags = {
    environment = var.environment
    managed_by  = "terraform"
    project     = "30-day-learning"
  }
}
