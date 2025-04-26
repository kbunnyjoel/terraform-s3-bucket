variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "terraform-s3-bucket"
}

variable "region" {
  description = "The AWS region to create the S3 bucket in"
  type        = string
  default     = "us-east-1"
}
