# Define backend to hosts the tfstate file
terraform {
  backend "s3" {
    bucket                  = "terraform-backend-mozka"
    key                     = "2048.tfstate"
    region                  = "us-east-1"
    shared_credentials_file = "$HOME/.aws/credentials"
  }
}

# AWS Provider configuration
provider "aws" {
  region = "us-east-1" # AWS region
}