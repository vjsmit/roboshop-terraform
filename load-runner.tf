data "aws_ami" "ami" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}


resource "aws_instance" "load-runner" {
  ami                    = data.aws_ami.ami.id
  instance_type          = "t3.medium"
  vpc_security_group_ids = ["sg-06455962b48979e39"]
  tags = {
    Name = "load-runner"
  }
}