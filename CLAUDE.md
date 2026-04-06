# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Purpose

This is a learning repository. The user is a complete beginner in Terraform and Azure Automation Runbooks. When writing or explaining code:
- Define every concept and term the first time it appears
- Explain *why* each block or setting exists, not just what it does
- Prefer small, incremental examples over large complete configurations

## Prerequisites

Authenticate with Azure before running any Terraform commands:

```bash
az login
az account set --subscription <subscription-id>
```

## Common Commands

```bash
# Initialize working directory and download providers
terraform init

# Validate configuration syntax
terraform validate

# Format all .tf files recursively
terraform fmt -recursive

# Preview changes (saves plan to file)
terraform plan -out=tfplan

# Apply a saved plan
terraform apply tfplan

# Apply interactively (prompts for confirmation)
terraform apply

# Tear down all managed infrastructure
terraform destroy
```

To target a specific resource:

```bash
terraform plan -target=<resource_type>.<resource_name>
terraform apply -target=<resource_type>.<resource_name>
```

## State Backend

State is stored in an Azure Storage Account. Run `terraform init` after any backend configuration changes. Never manually edit or delete `.tfstate` files.

## Project Structure Conventions

```
.
├── main.tf          # Root module resources
├── variables.tf     # Input variable declarations
├── outputs.tf       # Output value declarations
├── providers.tf     # Provider and backend configuration
├── terraform.tfvars # Variable values (not committed if sensitive)
└── modules/         # Reusable child modules
```

For multi-environment setups, use separate `.tfvars` files per environment (e.g., `dev.tfvars`, `prod.tfvars`) and pass them explicitly:

```bash
terraform plan -var-file=dev.tfvars
```
