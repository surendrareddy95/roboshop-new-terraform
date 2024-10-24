resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = data.aws_security_group.sg.id
  tags = {
    Name = "test-${var.env}"
  }
}