terraform {
  backend "s3" {
    bucket = "pihu-terraform-state-bucket-123"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}
