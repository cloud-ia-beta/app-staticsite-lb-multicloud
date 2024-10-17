terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.70"
    }
  }
  backend "s3" {
    bucket         = "s3-tf-beta1902-01"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-state-beta1902"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
