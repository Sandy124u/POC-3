ami_id              = "ami-0abcdef1234567890"
instance_type       = "t3.large"
subnet_id           = "subnet-123456"
vpc_id              = "vpc-123456"
key_name            = "HCL-Project"
iam_instance_profile = "EC2-SSM-Role"
env                 = "prod"

corp_vpn_cidrs = ["10.0.0.0/16"]
app_cidrs      = ["172.16.0.0/16"]

common_tags = {
  Terraform   = "true"
  Department  = "IT"
  CostCenter  = "12345"
  Owner       = "platform-team"
  Compliance  = "ISO27001"
}
