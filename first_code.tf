provider "aws" {
    profile = "default"
    region = "us-west-2"
    }

# Opprettelse av en VPC
resource "aws_vpc" "jgd_vpc" {
    cidr_block ="10.0.0.0/16"
    
    tags = {
    Owner = "JGD"
    Name ="VPC_JGD"
    Environment = "Oregon"
    }
 }

# Opprettelse av et subnet
resource "aws_subnet" "jgd_subnet" {
  vpc_id            = aws_vpc.jgd_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "jgd_subnet-10"
  }
}

# opprettelse av NIC
resource "aws_network_interface" "jgd_NIC" {
  subnet_id   = aws_subnet.jgd_subnet-10.id
  private_ips = ["10.0.0.10"]

  tags = {
    Name = "jgd_network_interface"
  }
}
