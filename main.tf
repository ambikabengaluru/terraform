
resource "snowflake_database" "sale_db" {
  name = var.database
}

resource "snowflake_schema" "sale_schema" {
  database = snowflake_database.sales_db.name
  name      = var.schema
}
