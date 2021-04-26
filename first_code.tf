provider "aws" {
    profile = "default"
    region = "eu-north-1"
    }

resource "aws_s3_bucket" "tf-botta" {
    bucket = "tf-course-20210426"
    acl = "private"
}
