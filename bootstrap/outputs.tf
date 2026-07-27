output "bucket_name" {
  description = "Created S3 bucket name"
  value       = aws_s3_bucket.state_bucket.id
}

output "dynamodb_table" {
  description = "Created DynamoDB table name"
  value       = aws_dynamodb_table.locks.name
}
