provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://vault-internal.surendra22.online:8200"
  skip_tls_verify = true
  token = var.vault_token
}

variable "vault_token" {}

module "db-instances" {
  for_each = var.db_instances
  source = "./modules/ec2"
  env = var.env
  private_zone_id = var.zone_id
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
  domain_name = var.domain_name
  volume_size = each.value.volume_size
}

module "app-instances" {
  for_each = var.app_instances
  source = "./modules/ec2"
  private_zone_id = var.private_zone_id
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
  private_zone_id = var.private_zone_id
  component_name = each.key
  instance_type = each.value.instance_type
  app_port = each.value.app_port
  domain_name = var.domain_name
  volume_size = each.value.volume_size
}