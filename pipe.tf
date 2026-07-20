resource "snowflake_pipe" "terra_pipe" {

  database = snowflake_database.unique_db.name
  schema   = snowflake_schema.unique_schema.name

  name = var.pipe_name

  copy_statement = <<EOT
COPY INTO unique_db.unique_SCHEMA.EXAMPLE
FROM @unique_DB.unique_SCHEMA.EXTERNAL_STG
FILE_FORMAT = (
    TYPE = CSV
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
)
EOT

  auto_ingest = true
}
