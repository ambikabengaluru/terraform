
resource "snowflake_database" "unique_db" {
  name = var.database
}

resource "snowflake_schema" "unique_schema" {
  database = snowflake_database.unique_db.name
  name      = var.schema
}
