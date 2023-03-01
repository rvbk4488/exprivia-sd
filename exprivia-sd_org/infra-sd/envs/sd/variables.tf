# Storage account

variable "tenant_id" {
  description = "azure tenant id"
}

variable "subscription_id" {
  description = "azure subscription id"
}

variable "sentinel_subscription_id" {
  description = "The unique ID of the subscription that hosts the Sentinel environment."
}

variable "resource_group_name" {
  description = "resource_group_name"
}

variable "account_replication_type" {
  description = "account_replication_type"
}

variable "environment" {
  description = "Environment tag"
}

variable "department" {
  description = "Department name"
}

variable "location" {
  description = "Azure location name"
}

variable "location_short" {
  description = "The Azure Region short code in which all resources should be provisioned"
}

variable "cluster_id" {
  description = "cluster id"
}

variable "storage_use_azuread" {
  description = "Use Azure AD as authentication method to deploy objects on the Storage Account. Setting it to true entails not using Shared Access Keys and, hence, not being able to deploy Azure Tables."
  type = bool
  default = false
}

variable "storageaccount_id" {
  description = "storageaccount_id"
}

variable "storageaccount_description" {
  description = "storageaccount_description"
}

variable "network_rules_virtual_network_subnet_ids" {
  description = "network_rules_virtual_network_subnet_ids"
}

variable "shared_access_key_enabled" {
  description = "shared_access_key_enabled"
}

/*
variable "name_st" {
  type        = string
  description = "Base name of the resource"
}
*/

# mysql 

variable "name-flexible-server" {
  type        = string
  description = "Name of the flexible server of the database"
}

variable "db_name" {
  type        = string
  description = "Name of the database"
}

variable "administrator_login" {
  type        = string
  description = "Administrator login name"
}

variable "administrator_password" {
  type        = string
  description = "Administrator login password"
}

# Cogsrch 


variable "cogsrch_name" {
  type        = string
  description = "Base name of the resource"
}

variable "name_cognitive_account" {
  type        = string
  description = "Base name of the resource"
}

/*
variable "resource_group_name" {
  type = string
  description = "Name of the resource "
}
*/


/*
variable "mysql_admin_credentials" {
  type = object({
    username = string
    password = string
  })
  description = "Admin credentials for the MySQL instance"
}

variable "admin_access_policy_object_id" {
  type        = string
  description = "Object id of a user, group or role to use for this access policy"
}
*/

# Keyvault
variable "kvglobaldocsd_name" {
  type        = string
  description = "Base name of the resource"
}

/*
variable "location" {
  description = "Azure location name"
}

variable "resource_group_name" {
  type = string
  description = "resource group name"
}

variable "tenant_id" {
  type        = string
  description = "Tenant id"
}
*/

/*
variable "mysql_admin_credentials" {
  type = object({
    username = string
    password = string
  })
  description = "Admin credentials for the MySQL instance"
}

variable "admin_access_policy_object_id" {
  type        = string
  description = "Object id of a user, group or role to use for this access policy"
}
*/

# Logic app

variable "logicapp_name" {
  type        = string
  description = "Base name of the resource"
}

variable "trigger_http_request_name" {
  type        = string
  description = "Base name of the resource"
}

variable "action_http_name" {
  type        = string
  description = "Base name of the resource"
}

/*
variable "resource_group_name" {
  type = string
  description = "Name of the resource "
}

variable "location" {
  type = string
  description = "Location of the resource group"
}
*/
