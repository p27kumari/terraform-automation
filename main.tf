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

module "storage" {
  source = "./Modules/storage"

  bucket_name   = var.bucket_name
  environment   = "dev"
  project_name  = "terraform-practice"
  additional_tags = {
    ManagedBy = "Terraform"
    Owner     = "DevOps"
  }
}
