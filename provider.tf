terraform {
  required_version = ">= 1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }
  }
  cloud {

    organization = "ahcintha-hcp"

    workspaces {
      name = "my-demo-workspace"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}