provider "aws" {
    profile = "default"
    project = "Joars start project"
    region = "eu-north-1"
    # lagt til access keys. Har ikke lagt inn selve key enda, så må peke på den variablen som jeg har laget.
    access_key = ""
    secret_key = ""
    }

resource "aws_s3_bucket" "tf_bucket" {
    bucket = "tf-course-20201202"
    acl = "private"
}
