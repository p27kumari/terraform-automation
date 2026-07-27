variable "aws_region" {
  description = "AWS region where the resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally unique name for the S3 bucket"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name to use (optional)"
  type        = string
  default     = ""
}

variable "public_key_path" {
  description = "Path to a public key file to create a key pair (optional)"
  type        = string
  default     = ""
}
