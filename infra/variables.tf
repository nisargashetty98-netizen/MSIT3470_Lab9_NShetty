variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for demo plan"
}

variable "owner" {
  type        = string
  default     = "NShetty"
  description = "Unique ID for tagging"
}
