# Resource group
location            = "East US"
resource_group_name = "rg-sqlserver"

# SQL Server
sqlserver_name               = "edtroleissqlserver01"
sqlserver_version            = "12.0"
administrator_login          = "edtroleis"
administrator_login_password = "Troleis$$"
sqlserver_database_name      = "edtroleisdatabase01"
edition                      = "Basic"
# requested_service_objective_name=""

# Storage account for sql server
sa_name                     = "edtroleissasqlserver"
sa_account_tier             = "Standard"
sa_account_replication_type = "LRS"

# Tags
owner       = "Troleis"
project     = "azure-sqlserver"
environment = "Development"