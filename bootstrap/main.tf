provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "state_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = var.bucket_name
    Environment = "bootstrap"
  }
}

resource "aws_dynamodb_table" "locks" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.dynamodb_table_name
  }
}

