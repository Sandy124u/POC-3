# VPC Variables
variable "vpc_cidr" {}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "env" {}

variable "common_tags" {
  type = map(string)
}

# EC2 Variables
variable "ami_id" {}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {}

variable "iam_instance_profile" {}

variable "corp_vpn_cidrs" {
  type = list(string)
}

variable "app_cidrs" {
  type = list(string)
}