provider "snowflake" {
  organization_name = var.organization_name
  account_name      = var.account_name
  user              = var.user
  password          = var.password

  role              = var.role
  warehouse         = var.warehouse
}

resource "snowflake_database" "sales_db" {
  name = var.database
}

resource "snowflake_schema" "sales_schema" {
  database = snowflake_database.sales_db.name
  name      = var.schema
}
