provider "aws" {
  region = "us-west-1"
  access_key = "AKIAVFIWIUXH6Y3TR7F3"
  secret_key = "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"
}

resource "aws_s3_bucket" "env0bucket" {
  bucket = "bucketdemo"
}
