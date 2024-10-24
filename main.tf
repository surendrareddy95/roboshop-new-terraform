provider "aws" {
  region = "us-east-1"
}

module "roboshop" {
  source = "./modules/ec2"
  env = var.env
}