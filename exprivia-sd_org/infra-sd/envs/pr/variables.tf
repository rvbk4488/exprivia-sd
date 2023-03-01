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

