module "local_module" {
  source = "../search"
#  source = "comment/local_module"
  aws_profile = ""
  pgadmin_password = ""
  region = ""
  state_bucket = ""
}

module "remote_module" {
#  source = "terraform-aws-modules/comment/ignore"
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 2.1.0"
}

output "my_arn_id" {
  value = module.remote_module.s3_bucket_arn
}
