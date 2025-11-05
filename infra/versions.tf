terraform {
  required_version = ">= 1.8.0, < 2.0.0"

  random = {
    source  = "hashicorp/random"
    version = "~> 3.6"
  }
}
