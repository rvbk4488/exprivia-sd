# Note: the variables values defined in this file will be applied to every environment (sd, st, pp, pr).
#       The values defined in the /vars/vars_env.tfvars have precedence over those defined in /vars/vars_common.tfvars:
#       this means that if a variable is defined in both files, the value applied to the environment env will be the
#       one defined in /vars/vars_<env>.tfvars

subscription_id           = "2d8fcb85-a337-4857-8fca-37512428b5ef" # ID of the target deployment subscription
sentinel_subscription_id  = "b4927d8d-ba48-4e6b-af83-32c09d54f93f"
storage_use_azuread       = false

resource_group_name = "rg-wwe-ictd-globaldocument" # resource group which will contain the building block
account_replication_type = "LRS" # LRS, GRS, RAGRS, ZRS, GZRS or RAGZRS
storageaccount_id = "1" # ID for the storage account
storageaccount_description = "saprova"
network_rules_virtual_network_subnet_ids = ["/subscriptions/96a40bac-88bf-4df0-a329-8d015369d7ba/resourceGroups/rg-wwe-ictp-network-aks/providers/Microsoft.Network/virtualNetworks/vnet-wwe-ictp-000-aks/subnets/sn-wwe-ictp-ecs03apr", "/subscriptions/96a40bac-88bf-4df0-a329-8d015369d7ba/resourceGroups/rg-wwe-ictp-network-aks/providers/Microsoft.Network/virtualNetworks/vnet-wwe-ictp-000-aks/subnets/sn-wwe-ictp-ecs03bpr"] # IDs of the AKS's subnets of GitLab's agents
shared_access_key_enabled = true


location = "West Europe"
location_short = "wwe"
department = "ict"

