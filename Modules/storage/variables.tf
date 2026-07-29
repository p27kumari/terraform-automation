variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag for the bucket"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project tag for the bucket"
  type        = string
  default     = "terraform-practice"
}

variable "additional_tags" {
  description = "Extra tags to add to the bucket"
  type        = map(string)
  default     = {}
}
