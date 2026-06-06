terraform {
  backend "s3" {
    bucket         = "poc3-terraform-state-sandy124u" 
    key            = "ec2/prod/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
