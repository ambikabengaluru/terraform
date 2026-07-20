resource "snowflake_stage" "external_stage" {

  name     = var.stage_name
  database = snowflake_database.unique_db.name
  schema   = snowflake_schema.unique_schema.name

  url = var.s3_location

  storage_integration = snowflake_storage_integration.s3_my_bucket.name
}
