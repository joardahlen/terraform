provider "aws" {
    profile = "default"
    region = "us-west-2"
    }

resource "aws_vpc" "vpc-1" {
    cidr_block ="10.0.0.0/16"
    }
#
#resource "aws_s3_bucket" "botta-bucket" {
#    bucket = "tf-course-20210426-2"
#    acl = "private"
#}
