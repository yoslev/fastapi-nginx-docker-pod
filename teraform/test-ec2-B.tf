# variables
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
  default = "us-west-2"
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
  profile    = "default"
}

# TEST-2 EC2 instance
resource "aws_instance" "TEST-2" {
  ami           = "ami-2757f631" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.proxy.id]
  vpc_id = "TEST_VPC"

  # install Apache httpd
  user_data = <<EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              EOF
}

# security group for incoming traffic from Leumi proxy IP address
resource "aws_security_group" "proxy" {
  name_prefix = "allow-proxy"
  vpc_id      = "TEST_VPC"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["91.231.246.50/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
