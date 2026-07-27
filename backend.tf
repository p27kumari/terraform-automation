terraform {
  backend "s3" {
    bucket         = "pihu-terraform-state-bucket"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
