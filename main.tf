resource "aws_vpc" "my_vpc" {
  cidr_block           = var.mycidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "my-prod-vpc"
    Environment = var.environment
    Team        = "devops"
  }
}

resource "aws_subnet" "my_private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.pvt_subnet_cidr
  availability_zone = var.pvt_subnet_az
  tags = {
    Name        = "my-prod-private-subnet"
    Environment = var.environment
    Team        = "devops"
  }
}

resource "aws_subnet" "my_public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.pub_subnet_cidr
  availability_zone = var.pubt_subnet_az
  tags = {
    Name        = "my-prod-public-subnet"
    Environment = var.environment
  }
}