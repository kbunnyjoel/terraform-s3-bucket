terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  required_version = "~> 1.10"
  backend "s3" {
    bucket       = "your-s3-bucket-name"               # Replace with your bucket name
    key          = "terraform/state/terraform.tfstate" # Path to the state file
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
