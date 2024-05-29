resource "aws_vpc" "vpc_virginia" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "VPC_VIRGINIA"
    env = "Dev"
  }
}

resource "aws_vpc" "vpc_oregon" {
  cidr_block = "10.20.0.0/16"
  tags = {
    Name = "VPC_OREGON"
    env = "Dev"
  }
  provider = aws.oregon
}