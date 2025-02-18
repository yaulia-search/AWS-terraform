# Configure the aws provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.86.0"
    }
  }
}

provider "aws" {

  region = "ap-southeast-3"
  alias = "region-1-jkt"
 
}




resource "aws_vpc" "custom_vpc" {
  cidr_block = "10.0.0.0/16" #IP range available inside the vpc
  instance_tenancy = "default"

  tags = {
    "Name" = "custom_vpc"
  }
}


