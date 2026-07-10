variable "organization_name" {}

variable "account_name" {}

variable "user" {}

variable "password" {
  sensitive = true
}

variable "role" {}

variable "warehouse" {}

variable "database" {}

variable "schema" {}

variable "integration_name" {}
variable "aws_role_arn" {}
variable "s3_location" {}

