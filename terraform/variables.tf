# variables.tf
# Variables make your Terraform code reusable and configurable.
# Instead of hardcoding values like location or names, you define them here
# and set the actual values in terraform.tfvars.

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "australiaeast"
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "rg-terraform-learning"
}

variable "environment" {
  description = "Environment tag (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}
