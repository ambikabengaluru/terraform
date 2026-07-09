provider "snowflake" {
  account   = var.account
  user      = var.user
  password  = var.password
  role      = var.role
  warehouse = var.warehouse
}

resource "snowflake_database" "sales_db" {
  name = "SALES_DB"
}
