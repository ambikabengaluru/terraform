terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 1.0"
    }
  }

  required_version = ">= 1.5.0"
}


provider "snowflake" {
  organization_name = var.organization_name
  account_name      = var.account_name

  user      = var.user
  password  = var.password

  role      = var.role
  warehouse = var.warehouse

  preview_features_enabled = [
    "snowflake_storage_integration_resource",
    "snowflake_stage_resource"
  ]
}
