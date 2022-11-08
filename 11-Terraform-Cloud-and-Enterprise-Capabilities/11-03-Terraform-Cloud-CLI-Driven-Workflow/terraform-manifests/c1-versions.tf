# Terraform Block
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  # Update Terraform Cloud Backend Block Information below
  backend "remote" {
    organization = "hcta-dacdo"

    workspaces {
      name = "terraform-cloud-demo2"
    }
  }
}

# Provider Block
provider "aws" {
  region = var.aws_region
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
