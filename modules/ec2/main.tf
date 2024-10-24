resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e2e80b655837f7c6"]
  tags = {
    Name = "test-${var.env}"
  }
}