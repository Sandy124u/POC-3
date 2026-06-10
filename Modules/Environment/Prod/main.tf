provider "aws" {
  region = "ap-southeast-2"
}

# Call the VPC module
module "vpc" {
  source          = "../../VPC"   # relative path from Environment/Dev or Environment/Prod
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
  env             = var.env
  common_tags     = var.common_tags
}

# Call the EC2 module, consuming VPC outputs
module "ec2" {
  source               = "../../EC2"   # relative path from Environment/Dev or Environment/Prod
  ami_id               = var.ami_id
  instance_type        = var.instance_type

  # Correct references to module outputs
  subnet_id            = element(module.vpc.public_subnet_ids, 0)
  vpc_id               = module.vpc.vpc_id

  key_name             = var.key_name
  iam_instance_profile = var.iam_instance_profile
  env                  = var.env
  corp_vpn_cidrs       = var.corp_vpn_cidrs
  app_cidrs            = var.app_cidrs
  common_tags          = var.common_tags
}
