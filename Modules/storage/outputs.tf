output "bucket_name" {
  description = "The name of the created bucket"
  value       = aws_s3_bucket.this.bucket
}

output "bucket_id" {
  description = "The ID of the created bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the created bucket"
  value       = aws_s3_bucket.this.arn
}
