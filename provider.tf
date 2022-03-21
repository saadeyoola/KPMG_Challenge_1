provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 0.13.4"
  backend "s3" {
  }
}
