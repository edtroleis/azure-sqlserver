
# Resource group
variable "resource_group_name" {
  description = "Aks resource group"
  type        = string
}

variable "location" {
  description = "Location where the resources will be created"
  type        = string
}

# SQL Server
variable "sqlserver_name" {
  description = "The name of the Azure SQL instance - needs to be unique, lowercase between 3 and 24 characters including the prefix"
  type        = string
}

variable "sqlserver_version" {
  description = "The version of the Azure SQL Server instance"
  type        = string
}

variable "administrator_login" {
  description = "The name of the Azure SQL Server Admin user for the Azure SQL Database"
  type        = string
}

variable "administrator_login_password" {
  description = "The Azure SQL Database users password"
  type        = string
}

variable "sqlserver_database_name" {
  description = "The name of the Azure SQL database"
  type        = string
}


variable "edition" {
  description = "The Edition of the Database - Basic, Standard, Premium, or DataWarehouse"
  type        = string
}

# variable "requested_service_objective_name" {
#   description = "The Service Tier S0, S1, S2, S3, P1, P2, P4, P6, P11 and ElasticPool"
#   type        = string
# }

# Storage account for sqlserver database
variable "sa_name" {
  description = "Storage account name"
  type        = string
}

variable "sa_account_tier" {
  description = "Storage account tier"
  type        = string
}

variable "sa_account_replication_type" {
  description = "Storage account replication type"
  type        = string
}

# Tags
variable "owner" {
  description = "Tag owner"
  type        = string
}

variable "project" {
  description = "Tag project"
  type        = string
}

variable "environment" {
  description = "Tag environment"
  type        = string
}
