terraform {
  cloud {
    organization = "magische"

    workspaces {
      project = "magische"
      name    = "magische_infra_dev_backend"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.38.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}