terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "student_instance" {
  ami           = "ami-0a0e5d9c7acc336f1"      # Amazon Linux 2 (us-east-1)
  instance_type = "t3.micro"                   # Free Tier

  tags = {
    Name = "Terraform_Demo"
  }
}
