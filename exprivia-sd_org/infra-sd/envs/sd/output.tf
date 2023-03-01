
# mysql 
/*
output "mysql_flexible_server_administrator_credentials" {
  value = {
    username = azurerm_mysql_flexible_server.mysql.administrator_login
    password = azurerm_mysql_flexible_server.mysql.administrator_password
  }
  sensitive = true
  description = "Administrator username and password for the MySQL flexible server instance"
}
*/

/*
# Keyvault

output "vault_id" {
  value = azurerm_key_vault.main.id
}

output "vault_uri"{
  value = azurerm_key_vault.main.vault_uri
}
*/
