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
