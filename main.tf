
resource "snowflake_database" "sales_db" {
  name = var.database
}

resource "snowflake_schema" "sales_schema" {
  database = snowflake_database.sales_db.name
  name      = var.schema
}
