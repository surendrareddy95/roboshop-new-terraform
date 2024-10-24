provider "aws" {
  region = "us-east-1"
}

module "roboshop" {
  for_each = var.database-instances
  source = "./modules/ec2"
  env = var.env
}