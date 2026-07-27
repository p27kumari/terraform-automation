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
