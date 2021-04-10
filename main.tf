provider "aws" {}

resource "aws_eip" "my_static_ip" {
  instance = aws_instance.my_webserver.id
}

resource "aws_instance" "my_webserver" {
  ami           = "ami-0db9040eb3ab74509"
  instance_type = "t2.micro"

  tags = {
    Name    = "WebServer"
    Owner   = "Bohdan"
    Project = "Test"
  }

  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  user_data              = file("user-data.sh")

  lifecycle {
    create_before_destroy = true
  }
}