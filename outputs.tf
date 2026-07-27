output "bucket_name" {
  value = aws_s3_bucket.demo_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.demo_bucket.arn
}

output "meera_bucket_name" {
  value = aws_s3_bucket.meera_bucket.id
}

output "meera_bucket_arn" {
  value = aws_s3_bucket.meera_bucket.arn
}
