provider "aws" {
  version = "~> 4.0"
  region = "ap-south-1"
  access_key = "AKIAVFIWIUXH6Y3TR7F3"
  secret_key = "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"
}

provider "random" {}

resource "random_string" "random" {
  length = "16"
  special = "false"
  min_lower = "16"
}

resource "aws_s3_bucket" "env0bucket" {
  bucket = "bucketdemo"
}

resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {
  bucket = aws_s3_bucket.website_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.website_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
