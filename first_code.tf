provider "aws" {
    profile = "default"
    region = "us-west-2"
    }

resource "aws_vpc" "jgd_vpc" {
    cidr_block ="10.0.0.0/16"
    
    tags = {
    Owner = "JGD"
    Name ="VPC_JGD"
    Environment = "Oregon"
    }
 }

