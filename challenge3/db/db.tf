resource "aws_instance" "db" {
  ami = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}

output "PrivateIP" {
  value = aws_instance.db.private_ip
}