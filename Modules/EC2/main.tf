provider "aws" {
  region = "ap-southeast-2"
}

# Security group for EC2
/* resource "aws_security_group" "ec2_sg" {
  name        = "${var.env}-ec2-sg"
  description = "Corporate EC2 security group"
  vpc_id      = var.vpc_id */
/* 
  ingress {
    description = "Allow SSH from corporate VPN"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.corp_vpn_cidrs
  }

  ingress {
    description = "Allow app traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = var.app_cidrs
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 */
 /*  tags = var.common_tags
} */

# EC2 instance referencing existing IAM instance profile
resource "aws_instance" "corp_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = var.key_name

  # Reference existing IAM instance profile created in console
  iam_instance_profile   = "EC2-SSM-Role"

  monitoring   = true
  ebs_optimized = true

  tags = merge(
    var.common_tags,
    {
      Name        = "${var.env}-app-server"
      Environment = var.env
      Owner       = "platform-team"
      Compliance  = "ISO27001"
    }
  )
}
