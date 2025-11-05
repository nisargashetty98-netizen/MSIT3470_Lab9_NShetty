terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# Configure AWS provider for CI-only plan (no real credentials)
provider "aws" {
  region = "us-east-1"

  # disable all AWS checks
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  access_key                  = "fake"
  secret_key                  = "fake"
  token                       = "fake"
}
