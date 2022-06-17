terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "ec2-web" {
  ami                    = "ami-09439f09c55136ecf"
  instance_type          = "t2.micro"
  count                  = 1
  iam_instance_profile   = "AmazonSSMRoleForInstancesQuickSetup"
  vpc_security_group_ids = [aws_security_group.securitygroup.id]
  user_data              = file("./script.sh")
  tags = {
    Name = "samplepraveen.${count.index}"
  }
}
