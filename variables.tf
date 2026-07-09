variable "account" {}
variable "user" {}
variable "password" {
  sensitive = true
}
variable "role" {}
variable "warehouse" {}
variable "database" {}
variable "schema" {}
