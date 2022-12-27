
provider "aws" {
  region = "ap-southeast-2"
}

module "mysql" {
  source = "../../module/data-stores/mysql"

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}