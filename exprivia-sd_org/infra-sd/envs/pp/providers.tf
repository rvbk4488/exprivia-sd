provider "azurerm" {
  features {}
}

provider "azuread" {
}

provider "azurerm" {
  features {}
  alias                       = "sentinel"
  subscription_id             = var.sentinel_subscription_id
  skip_provider_registration  = true
}
