resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0e2e80b655837f7c6"]
  tags = {
    Name = "${var.component_name}-${var.env}"
  }
}