provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "kosta_bucket" {
  bucket = "kosta-bucket-from-terraform"
}
