terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "dev"
    Project     = "terraform-practice"
  }
}
resource "aws_s3_bucket" "meera_bucket" {
  bucket = "meera-bucket-shubham-123"

  tags = {
    Name        = "meera-bucket-shubham-123"
    Environment = "dev"
    Project     = "terraform-practice"
  }
}
