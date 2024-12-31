#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#  owners      = ["973714476881"]
#}

data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "RHEL-9-DevOps-Practice"
  owners      = ["396608809975"]
}

data "aws_security_group" "sg" {
  name = "allow-all"
}


data "vault_generic_secret" "ssh"{
  path = "infra-secrets/ssh"
}