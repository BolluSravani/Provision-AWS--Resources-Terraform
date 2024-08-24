provider "aws" {
  region  = "us-east-1"
}
# VPC
resource "aws_vpc" "main7" {
  cidr_block = "10.0.0.0/16"
}

# Subnets
resource "aws_subnet" "public7" {
  count                   = 2
  vpc_id                  = aws_vpc.main7.id
  cidr_block              = cidrsubnet(aws_vpc.main7.cidr_block, 8, count.index)
  availability_zone       = element(["us-east-1a", "us-east-1b"], count.index)
  map_public_ip_on_launch = true
}

# Internet Gateway
resource "aws_internet_gateway" "igw7" {
  vpc_id = aws_vpc.main7.id
}
