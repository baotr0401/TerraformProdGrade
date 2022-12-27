provider "aws" {
  region = "ap-southeast-2"
}
/* resource "aws_iam_user" "example" {
  count = 3
  name  = "neo.${count.index}"
} */

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}
