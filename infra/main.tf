# Generate random hex to make bucket unique
resource "random_id" "suffix" {
  byte_length = 2
}

# Simple AWS S3 bucket
resource "aws_s3_bucket" "demo" {
  bucket = "msit3470-lab9-nshetty-${random_id.suffix.hex}"

  tags = {
    Name  = "MSIT3470_Lab9_NShetty"
    Owner = "NShetty"
  }
}
