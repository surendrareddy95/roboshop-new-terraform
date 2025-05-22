data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "RHEL-9-DevOps-Practice"
  owners = ["209229689544"]
}

data "aws_security_group" "sg" {
  name = "allow-all"
}


#data "vault_generic_secret" "ssh"{
#  path = "infra-secrets/ssh"
#}