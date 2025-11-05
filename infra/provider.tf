provider "aws" {
  region = var.aws_region
  # No credentials needed for plan-only run.
}
