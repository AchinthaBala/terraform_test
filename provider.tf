terraform {
  required_version = "~> 1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.31.0"
    }
  }
  cloud {
    organization = "ahcintha-hcp"
    workspaces {
      name = "achintha-pro-workspace"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
}
