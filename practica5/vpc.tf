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

variable "virginia_cidr" {
  default = "10.10.0.0/16"
}

variable "oregon_cidr" {
  default = "10.20.0.0/16"
}