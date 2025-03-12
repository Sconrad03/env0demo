provider "aws" {
  region = "us-west-1"

 assume_role {
    role_arn = "arn:aws:iam::123456789012:role/github-actions-role"
  }
}

resource "aws_s3_bucket" "env0bucket1" {
  bucket = "bucketdemo1"
}
