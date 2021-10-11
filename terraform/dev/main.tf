provider "aws" {}

module "my_ec2" {
  source = "../module/ec2"
  ami_id = "ami-0bb1758bf5a69ca5c"
  sg_name = module.my_ec2.nosto_sg
}

