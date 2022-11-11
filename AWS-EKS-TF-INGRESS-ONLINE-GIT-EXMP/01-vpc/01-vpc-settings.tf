terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = "~> 4.0"
  }
}

provider "aws" {
  region = "us-east-1"
}
