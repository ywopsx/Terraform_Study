provider "aws" {
    region = "ap-northeast-1"
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.10.0.0/16"
    enable_dns_support    = true
    enable_dns_hostnames  = true

    tags = {
      Name = "tf-vpc-an1-yewon"
      Terraform = "True"
    }
}

