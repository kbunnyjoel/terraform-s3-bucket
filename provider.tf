terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  required_version = "> 1.5"
  backend "s3" {
    bucket       = "tfstate-s3-bucket-147997123166"
    key          = "terraform/state/terraform.tfstate" # Path to the state file
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
