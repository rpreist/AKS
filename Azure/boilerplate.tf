terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.10.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">=2.24.0"
    }
    github = {
      source  = "integrations/github"
      version = ">=4.26.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

provider "azuread" {
  # Configuration for azuread provider if necessary
  # For example, you might need to specify a tenant_id
}

provider "github" {
  owner = "teamdman-ca"
  # Ensure to configure authentication for GitHub Provider
  # For example, using a token
  # token = var.github_token
}

# Corrected Data Source for Azure AD Client Config
data "azuread_client_config" "current" {
  # No configuration required for the data source
}
