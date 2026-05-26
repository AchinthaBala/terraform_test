resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "my-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name = var.subnet_name
  }
}
