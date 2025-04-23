provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source      = "./test_module"
  ami_id      = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
  subnet_id   = "subnet-12345678"       
}

module "ec4" {
  source      = "./test_module2"
  ami_id      = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
  subnet_id   = "subnet-12345678"       
}


output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec4_instance_id" {
  value = module.ec4.instance_id
}
