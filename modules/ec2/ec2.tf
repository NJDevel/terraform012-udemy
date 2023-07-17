variable "ec2name" {
  type = string
}

resource "aws_instance" "db" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2name
  }
}
