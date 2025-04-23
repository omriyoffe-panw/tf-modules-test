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

resource "aws_batch_job_definition" "example" {
  name = "example-job-definition"
  type = "container"

  container_properties = jsonencode({
    image: "busybox",
    vcpus: 1,
    privileged: true,
    memory: 512,
    command: ["echo", "Hello, World!"]
  })
}
