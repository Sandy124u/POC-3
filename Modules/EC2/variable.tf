variable "ami_id" {}
variable "instance_type" { default = "t3.medium" }
variable "subnet_id" {}
variable "vpc_id" {}
variable "key_name" {}
variable "iam_instance_profile" {}
variable "env" {}
variable "corp_vpn_cidrs" { type = list(string) }
variable "app_cidrs" { type = list(string) }
variable "common_tags" { type = map(string) }
