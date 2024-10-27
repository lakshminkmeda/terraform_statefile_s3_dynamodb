terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.73.0"
    }
  }
  backend "s3" {
    bucket = "tf-backend-s3-bucket"
    key = "terraform/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region = "eu-north-1"
  }
}

resource "aws_s3_bucket" "s3" {
  bucket = "oncloud9-bucket"
}