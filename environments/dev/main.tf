terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
}


#provider "aws" {   # Already mentioned above
#  region = "ap-south-1"g
#}

module "vpc" {
  source     = "../../modules/aws-vpc"
  vpc_name   = "myvpc-mumbai"
  cidr_block = "10.0.0.0/16"
  sg_name    = "mysg-ap-south-1"
}





