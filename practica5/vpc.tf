resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_VIRGINIA"
    env = "Dev"
  }
}

resource "aws_vpc" "vpc_oregon" {
  cidr_block = var.oregon_cidr
  tags = {
    Name = "VPC_OREGON"
    env = "Dev"
  }
  provider = aws.oregon
}

