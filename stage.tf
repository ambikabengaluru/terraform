resource "snowflake_stage" "external_stage" {

  name     = var.stage_name
  database = snowflake_database.test_db.name
  schema   = snowflake_schema.test_schema.name

  url = var.s3_location

  storage_integration = snowflake_storage_integration.s3_inte.name
}
