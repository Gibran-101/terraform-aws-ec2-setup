terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]  # Path to your AWS credentials file
  profile                  = "your_profile"  # Enter your AWS profile name here
}
