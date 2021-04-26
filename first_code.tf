provider "aws" {
    profile = "default"
    region = "eu-north-1"
    }

resource "aws_s3_bucket" "botta" {
    bucket = "tf-course-20210426-1"
    acl = "private"
}
