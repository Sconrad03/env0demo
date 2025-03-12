provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "env0bucket1" {
  bucket = "bucketdemo1"
}
