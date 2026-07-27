terraform {
  backend "s3" {
    bucket         = "Pihu-my-terraform-state-bucket-12345"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
