terraform {
  backend "s3" {
    bucket         = "pihu-bucket-for-state-management"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-db"
  }
}
