terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.34.0"
    }
  }
}

provider "aws" {
#  profile = "default"
#  region  = "ap-south-1"
 region = "us-east-1"
}