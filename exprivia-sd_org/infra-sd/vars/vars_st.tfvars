# Note: the variables values defined in this file will be applied to the st environment.
#       The values defined in the /vars/vars_env.tfvars have precedence over those defined in /vars/vars_common.tfvars:
#       this means that if a variable is defined in both files, the value applied to the environment env will be the
#       one defined in /vars/vars_<env>.tfvars

subscription_id = "2d8fcb85-a337-4857-8fca-37512428b5ef"
location = "West Europe"
location_short = "we"
department = "ict"
environment = "t"
cluster_id = "mysqlst"

# vnet stuff
vnet_subnet_ids= ["/subscriptions/ec5ba19e-6205-418f-a52d-d0943090ca16/resourceGroups/rg-wwe-ictx-network-aks/providers/Microsoft.Network/virtualNetworks/vnet-wwe-ictx-000-aks/subnets/sn-wwe-ictx-ecs-04"]
