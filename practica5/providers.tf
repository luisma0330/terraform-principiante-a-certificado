terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=4.43.0, <=5.51.1, !=4.43.0"
    }
  }
  required_version = ">=1.7.0"
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-2"
  alias = "oregon"
}