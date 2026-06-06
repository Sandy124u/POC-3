terraform {
  backend "s3" {
    bucket         = "corp-terraform-state"
    key            = "ec2/prod/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
