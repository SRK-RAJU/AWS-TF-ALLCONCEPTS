terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = "~> 0.13"
  }
}

provider "aws" {
  region = "us-east-1"
}
