provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "secure-sg" {
  name = "secure-sg"

  ingress {
    description = "Allow HTTP only from internal network"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    description = "Allow outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
