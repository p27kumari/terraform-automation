# Terraform GitHub Actions Practice

This folder contains a simple Terraform starter project and a GitHub Actions workflow to practice CI/CD.

## What this workflow does

On every push or pull request to main/master, it will:
- check Terraform formatting
- initialize Terraform
- validate the configuration
- run terraform plan

When you trigger the workflow manually and enable the Apply option, it will also run terraform apply.

## Required GitHub secrets and variables

Create these in your GitHub repository settings:

### Secrets
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY

### Variables
- AWS_REGION (for example: us-east-1)
- TF_BUCKET_NAME (a unique S3 bucket name for practice)

## How to use it

1. Push this folder to your GitHub repository.
2. Add the AWS secrets and variables above.
3. Open the Actions tab in GitHub.
4. Run the Terraform CI/CD workflow.

## Local practice commands

```powershell
cd terraform-scripting
terraform init
terraform plan -var="bucket_name=my-unique-practice-bucket"
terraform apply -var="bucket_name=my-unique-practice-bucket"
terraform destroy -var="bucket_name=my-unique-practice-bucket"
```

## Remote state backend (S3)

For CI and team use, store Terraform state in an S3 backend (and use DynamoDB for locking).

1. Create an S3 bucket and (optionally) a DynamoDB table for state locking:

	 - S3 bucket name must be globally unique.
	 - DynamoDB table should have `LockID` as the primary key (string).

2. Initialize Terraform with backend configuration (provide values at init):

```bash
terraform init \
	-backend-config="bucket=MY_STATE_BUCKET" \
	-backend-config="key=terraform/terraform.tfstate" \
	-backend-config="region=us-east-1" \
	-backend-config="dynamodb_table=MY_DDB_TABLE"  # optional
```

3. After successful init, Terraform will store the `terraform.tfstate` in the S3 bucket.

Quick CI note: In GitHub Actions pass the same `-backend-config` values during the `terraform init` step (you can use `secrets` to store the bucket and table names).

