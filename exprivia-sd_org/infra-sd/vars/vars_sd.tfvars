# Note: the variables values defined in this file will be applied to the sd environment.
#       The values defined in the /vars/vars_env.tfvars have precedence over those defined in /vars/vars_common.tfvars:
#       this means that if a variable is defined in both files, the value applied to the environment env will be the
#       one defined in /vars/vars_<env>.tfvars

resource_group_name = "rg-wwe-ictd-globaldocument"


# mysql

name-flexible-server = "mysql-globaldoc-sd"
#location = "West Europe"
#location_short = "we"
#department = "ict"
environment = "d"
cluster_id = "mysqlsd"
administrator_login = "global_admin"
administrator_password = "Abcde1234"
db_name             = "db-globaldoc-sd"
#resource_group_name = "rg-wwe-ictd-globaldocument"


# Cogsrch

cogsrch_name  = "cogsrch-globaldoc-sd"
name_cognitive_account = "cogsrch-globaldoc1-sd"
#location = "West Europe"
#location_short = "we"
#department = "ict"
#environment = "d"
#resource_group_name = "rg-wwe-ictd-globaldocument"


# Keyvault 

kvglobaldocsd_name= "kv-globaldoc-sd"
#resource_group_name = "rg-wwe-ictd-globaldocument"
tenant_id = "c16e514b-893e-4a01-9a30-b8fef514a650"
#location = "West Europe"
#location_short = "we"
#department = "ict"
#environment = "d"
#cluster_id = "mysqlsd"
admin_access_policy_object_id = "82bb22a2-d751-4553-9571-68e8c2984788"

# Logic app

logicapp_name ="logic-globaldoc-sd"
trigger_http_request_name = "logic-trigger-globaldoc-sd"
action_http_name = "logic-action-globaldoc-sd"
#resource_group_name = "rg-wwe-ictd-globaldocument"
#location = "West Europe"


# vnet stuff
vnet_subnet_ids= ["/subscriptions/ec5ba19e-6205-418f-a52d-d0943090ca16/resourceGroups/rg-wwe-ictx-network-aks/providers/Microsoft.Network/virtualNetworks/vnet-wwe-ictx-000-aks/subnets/sn-wwe-ictx-ecs-04"]
