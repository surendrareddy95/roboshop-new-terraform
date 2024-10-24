provider "aws" {
  region = "us-east-1"
}

module "db-instances" {
  for_each = var.db-instances
  source = "./modules/ec2"
  env = var.env
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
}

module "app-instances" {
  for_each = var.app-instances
  source = "./modules/ec2"
  env = var.env
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
}

module "web-instances" {
  for_each = var.web-instances
  source = "./modules/ec2"
  env = var.env
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
}