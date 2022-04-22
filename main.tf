terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rozanskilab"
  
    workspaces {
      name = "aws-tf"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}