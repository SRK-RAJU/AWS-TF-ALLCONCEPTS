terraform {
  required_version = "~> 1.13"
  required_providers {
    aws = "~> 4.0"
  }
}
provider "aws" {
  region = "us-east-1"
}
