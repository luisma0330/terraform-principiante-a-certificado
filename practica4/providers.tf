terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=4.43.0, <=5.50.0, !=4.43.0"
    }
  }
  required_version = "~>1.8.0"
}

provider "aws" {
  region = "us-east-1"
}