resource "snowflake_storage_integration" "my_s3_int" {
  name    = var.integration_name
  type    = "EXTERNAL_STAGE"

  storage_provider    = "S3"
  storage_aws_role_arn = var.aws_role_arn

  enabled = true

  storage_allowed_locations = [
    var.s3_location
  ]
}
