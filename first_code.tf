provider "aws" {
    profile = "default"
    region = "eu-north-1"
    }

resource "aws_s3_bucket" "tf_bucket" {
    bucket = "tf-course-20201202"
    acl = "private"
}
