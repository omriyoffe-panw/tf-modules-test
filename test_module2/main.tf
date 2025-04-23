provider "aws" {
  alias  = "usw2"
  region = "us-west-2"
}

resource "aws_s3_bucket" "bucket1"{
  bucket = "module-bucket1"
}

resource "aws_s3_bucket" "bucket2"{
  provider = aws.usw2
  bucket = "module-bucket2"
}
