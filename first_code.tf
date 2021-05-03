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

resource "aws_instance" "server-1" {
  ami           = ami-001628438d5d7d524
  instance_type = "t2.micro"
  # virtualization_type = "hvm"

  tags = {
    Name = "Hello-JGD"
  }
}
