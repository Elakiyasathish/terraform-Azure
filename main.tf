terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.0"
    }
  }
}

provider "aws" {
  region     = var.region
}


resource "aws_instance" "azure-project" {
  ami                         = "ami-02f3f602d23f1659d"
  instance_type               = "t2.micro"
}
