locals {
  bucket_name = "${var.bucket_name}-${data.aws_caller_identity.current.id}"
}
