terraform {
  required_version = "1.4.6"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        "Name" = "myvpc"
    }
}