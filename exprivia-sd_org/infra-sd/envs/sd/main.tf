# Creating storage account 

module "stac" {
  source = "gitlab-dgt.eni.com/infra/storageaccount/buildingblock"
  version = "1.0.3"
  tenant_id                                = var.tenant_id
  subscription_id                          = var.subscription_id
  storageaccount_id                        = var.storageaccount_id
  storageaccount_description               = "saglobaldocsd"#var.storageaccount_description"
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


# Creating mysql service 

/*
locals {
  flows = {
    auth = {
      file_path = "${path.module}/schemas/auth.json"
    }
    download_notification = {
      file_path = "${path.module}/schemas/download_notification.json"
    }
  }

  length = 16

  min_lower   = 1
  min_numeric = 1
  min_special = 1
  min_upper   = 1
}
*/

resource "azurerm_mysql_flexible_server" "mysql" {
  name                = var.name-flexible-server
  location            = var.location
  resource_group_name = var.resource_group_name
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  sku_name               = "GP_Standard_D2ds_v4"  
  zone = "2"
}

resource "azurerm_mysql_database" "mysqldb" {
  name                = var.db_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name

  charset   = "utf8"
  collation = "utf8_general_ci"
}

/*
data "local_file" "schemas" {
  for_each = local.flows

  filename = each.value.file_path
}
*/

# cogsrch

resource "azurerm_search_service" "cs-test-search1" {
    name                = var.cogsrch_name
    location            = var.location
    resource_group_name = var.resource_group_name
    sku                 = "standard"
    replica_count       = 1
    partition_count     = 1

}


resource "azurerm_cognitive_account" "cs-test-cognitive2" {
    name                = var.name_cognitive_account
    location            = var.location
    resource_group_name = var.resource_group_name
    kind                = "TextAnalytics"
    sku_name            = "S"
}

# Creating Keyvault

resource "azurerm_key_vault" "kvname" {
  name                = var.kvglobaldocsd_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
  sku_name            = "standard"

  soft_delete_retention_days      = 7
  enable_rbac_authorization       = false
  enabled_for_deployment          = false
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = false
  purge_protection_enabled        = false

  network_acls {
    bypass         = "AzureServices"
    default_action = "Allow"
  }
}


resource "azurerm_key_vault_access_policy" "kv_admin_access_policy" {
  key_vault_id = azurerm_key_vault.kvname.id
  tenant_id    = var.tenant_id
  object_id    = "82bb22a2-d751-4553-9571-68e8c2984788"

  certificate_permissions = [
    "Get",
    "List",
    "Update",
    "Create",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "ManageContacts",
    "ManageIssuers",
    "GetIssuers",
    "ListIssuers",
    "SetIssuers",
    "DeleteIssuers",
    "Purge",
  ]
  key_permissions = [
    "Get",
    "List",
    "Update",
    "Create",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "Decrypt",
    "Encrypt",
    "UnwrapKey",
    "WrapKey",
    "Verify",
    "Sign",
    "Purge"
  ]
  secret_permissions = [
    "Get",
    "List",
    "Set",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "Purge",
  ]
}

/*
resource "azurerm_key_vault_secret" "example" {
  for_each = var.storage_account_connection_strings

  key_vault_id = azurerm_key_vault.kv.id

  name  = each.key
  value = each.value
}
*/


# Creating Logic app

resource "azurerm_logic_app_workflow" "workflow" {
  name                = var.logicapp_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

locals {
  flows = {
    auth = {
      file_path = "${path.module}/schemas/auth.json"
    }
    download_notification = {
      file_path = "${path.module}/schemas/download_notification.json"
    }
  }
}

/*
data "local_file" "schemas" {
  for_each = local.flows

  filename = each.value.file_path
}
*/

resource "azurerm_logic_app_trigger_http_request" "trigger_http_request" {
  for_each = local.flows

  name         = var.trigger_http_request_name
  logic_app_id = azurerm_logic_app_workflow.workflow.id
  schema = <<SCHEMA
{
    "type": "object",
    "properties": {
        "hello": {
            "type": "string"
        }
    }
}
SCHEMA

}
resource "azurerm_logic_app_action_http" "action_http" {
  for_each = local.flows

  name         = var.action_http_name
  logic_app_id = azurerm_logic_app_workflow.workflow.id
  method       = "POST"
  uri          = "http://NOT_A_REAL_URI.com"
  
}

