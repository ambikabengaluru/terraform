resource "snowflake_pipe" "sales_pipe" {

  database = snowflake_database.sample_db.name
  schema   = snowflake_schema.sample_schema.name

  name = var.pipe_name

  copy_statement = <<EOT
COPY INTO sample_db.sample_SCHEMA.EXAMPLE
FROM @SAMPLE_DB.SAMPLE_SCHEMA.EXT_STG
FILE_FORMAT = (
    TYPE = CSV
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
)
EOT

  auto_ingest = true
}
