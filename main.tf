
resource "snowflake_database" "test_db" {
  name = var.database
}

resource "snowflake_schema" "test_schema" {
  database = snowflake_database.test_db.name
  name      = var.schema
}
