# Example: building block (storage account)

/*
module "stac" {
  source = "gitlab-dgt.eni.com/infra/storageaccount/buildingblock"
  version = "1.0.3"
  tenant_id                                = var.tenant_id
  subscription_id                          = var.subscription_id
  storageaccount_id                        = var.storageaccount_id
  storageaccount_description               = var.storageaccount_description
  resource_group_name                      = var.resource_group_name
  account_replication_type                 = var.account_replication_type
  network_rules_virtual_network_subnet_ids = var.network_rules_virtual_network_subnet_ids
  shared_access_key_enabled                = var.shared_access_key_enabled

  providers = {
    azurerm = azurerm
    azurerm.sentinel = azurerm.sentinel
    azuread = azuread
  }
}
*/
