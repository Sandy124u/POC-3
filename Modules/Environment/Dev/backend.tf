terraform {
  backend "s3" {
    bucket         = "corp-terraform-state"
    key            = "ec2/dev/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
