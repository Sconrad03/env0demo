provider "aws" {
  region = "us-west-1"

 assume_role {
    role_arn = "arn:aws:iam::354918376911:user/demos3"
  }
}

resource "aws_s3_bucket" "env0bucket1" {
  bucket = "bucketdemo1"
}
