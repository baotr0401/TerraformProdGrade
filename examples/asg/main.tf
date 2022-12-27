provider "aws" {
  region = "ap-southeast-2"
}

module "asg" {
  source = "../../module/cluster/asg-rolling-deploy"

  cluster_name  = var.cluster_name
  ami           = "ami-051a81c2bd3e755db"
  instance_type = "t2.micro"

  min_size           = 1
  max_size           = 1
  enable_autoscaling = false

  subnet_ids        = data.aws_subnet_ids.default.ids
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}