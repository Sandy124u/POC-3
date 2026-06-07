ami_id              = "ami-080beda09284d47e2"
instance_type       = "t3.micro"
key_name            = "HCL-Project"
iam_instance_profile = "EC2-SSM-Role"
env                 = "Dev"

corp_vpn_cidrs = ["10.0.0.0/16"]
app_cidrs      = ["172.16.0.0/16"]

common_tags = {
  Terraform   = "true"
  Department  = "IT"
  CostCenter  = "12345"
  Owner       = "platform-team"
  Compliance  = "ISO27001"
}

vpc_cidr = "172.16.0.0/16"

public_subnets = [
  "172.16.1.0/24",
  "172.16.2.0/24"
]

private_subnets = [
  "172.16.11.0/24",
  "172.16.12.0/24"
]

azs = [
  "ap-southeast-2a",
  "ap-southeast-2b"
]