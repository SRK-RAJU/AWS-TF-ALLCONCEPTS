terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    backend "remote" {
      hostname = "app.terraform.io"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

variable "cluster_name" {
  default = "eks-raju"
}

variable "cluster_version" {
  default = "1.23"
}