output "bucket_name" {
  value = aws_s3_bucket.demo_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.demo_bucket.arn
}

output "ec2_instance_id" {
  value = aws_instance.web.id
  description = "EC2 instance id"
}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
  description = "EC2 public IP"
}

output "ec2_public_dns" {
  value = aws_instance.web.public_dns
  description = "EC2 public DNS"
}
