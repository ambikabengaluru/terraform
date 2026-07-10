
resource "snowflake_database" "sample_db" {
  name = var.database
}

resource "snowflake_schema" "sample_schema" {
  database = snowflake_database.sample_db.name
  name      = var.schema
}
