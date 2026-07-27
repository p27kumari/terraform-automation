terraform {
  backend "s3" {}
}

// Configure the backend with `terraform init -backend-config=...`
// Example:
// terraform init \
//   -backend-config="bucket=my-terraform-state-bucket" \
//   -backend-config="key=path/to/terraform.tfstate" \
//   -backend-config="region=us-east-1" \
//   -backend-config="dynamodb_table=terraform-locks"  # optional
