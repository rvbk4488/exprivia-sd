terraform {
  required_version = ">= 1.0.0"
  backend "http" {}
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.99.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.20.0"
    }
  }
}

