terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "basic_ec2" {
  ami           = "ami-0c02fb55956c7d316" 
  instance_type = "t3.micro"              
  key_name      = "instance-cha-naav"                

  tags = {
    Name = "BasicEC2Instance"
  }
}
