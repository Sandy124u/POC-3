variable "vpc_cidr" {}
variable "public_subnets" {}
variable "private_subnets" {}
variable "azs" {}
variable "env" {}
variable "common_tags" {}

variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "iam_instance_profile" {}
variable "corp_vpn_cidrs" {}
variable "app_cidrs" {}

variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "iam_instance_profile" {
  type = string
}

variable "env" {
  type = string
}

variable "corp_vpn_cidrs" {
  type = list(string)
}

variable "app_cidrs" {
  type = list(string)
}

variable "common_tags" {
  type = map(string)
}