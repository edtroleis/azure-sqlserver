resource "azurerm_mssql_server" "sql-server" {
  name                         = var.sqlserver_name
  resource_group_name          = azurerm_resource_group.resource-group.name
  location                     = var.location
  version                      = var.sqlserver_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  tags = {
    "Owner"       = var.owner
    "Project"     = var.project
    "Environment" = var.environment
  }
}

resource "azurerm_sql_database" "sql-database" {
  name                = var.sqlserver_database_name
  resource_group_name = azurerm_resource_group.resource-group.name
  location            = var.location
  server_name         = azurerm_mssql_server.sql-server.name
  edition             = var.edition
  # requested_service_objective_name = var.requested_service_objective_name

  tags = {
    "Owner"       = var.owner
    "Project"     = var.project
    "Environment" = var.environment
  }
}

resource "azurerm_storage_account" "storage-account" {
  name                     = var.sa_name
  resource_group_name      = azurerm_resource_group.resource-group.name
  location                 = azurerm_resource_group.resource-group.location
  account_tier             = var.sa_account_tier
  account_replication_type = var.sa_account_replication_type
}

resource "azurerm_mssql_server_extended_auditing_policy" "sqlserver-auditing-policy" {
  server_id                               = azurerm_mssql_server.sql-server.id
  storage_endpoint                        = azurerm_storage_account.storage-account.primary_blob_endpoint
  storage_account_access_key              = azurerm_storage_account.storage-account.primary_access_key
  storage_account_access_key_is_secondary = false
  retention_in_days                       = 6
}

# resource "azurerm_sql_database" "example" {
#   name                = "myexamplesqldatabase"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = "West US"
#   server_name         = azurerm_sql_server.example.name

#   extended_auditing_policy {
#     storage_endpoint                        = azurerm_storage_account.example.primary_blob_endpoint
#     storage_account_access_key              = azurerm_storage_account.example.primary_access_key
#     storage_account_access_key_is_secondary = true
#     retention_in_days                       = 6
#   }

#   tags = {
#     environment = "production"
#   }
# }
