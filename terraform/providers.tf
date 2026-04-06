# providers.tf
# This file tells Terraform which cloud provider to use.
# We're using "azurerm" — the official Azure provider made by Microsoft.
# Think of it like an adapter that lets Terraform talk to Azure's API.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"  # Where to download the provider from
      version = "~> 3.0"             # Use any 3.x version
    }
  }

  required_version = ">= 1.0" # Minimum Terraform version required
}

provider "azurerm" {
  features {} # Required block — enables all default Azure provider features
}
