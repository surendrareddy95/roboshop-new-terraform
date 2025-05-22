provider "aws" {
  region = "us-east-1"
}

module "db-instances" {
  for_each = var.db_instances
  source = "./modules/ec2"
  env = var.env
  zone_id = var.zone_id
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
  domain_name = var.domain_name
  volume_size = each.value.volume_size
}

module "app-instances" {
  for_each = var.app_instances
  source = "./modules/ec2"
  zone_id = var.zone_id
  env = var.env
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
  domain_name = var.domain_name
  volume_size = each.value.volume_size
}

module "web-instances" {
  for_each = var.web_instances
  source = "./modules/ec2"
  env = var.env
  zone_id = var.zone_id
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
  domain_name = var.domain_name
  volume_size = each.value.volume_size
}

#variable "vault_token" {
#  default = "hvs.clZ0zqFWTNxzdl8kvvP0NnlL"
#}