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
