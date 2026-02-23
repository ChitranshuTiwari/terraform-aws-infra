terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../../modules/vpc"

  project_name       = var.project_name
  cidr_block         = var.cidr_block
  availability_zones = var.availability_zones
  tags               = var.tags
}

module "monitoring" {
  source = "../../modules/monitoring"

  project_name = var.project_name
  log_group_name = "/aws/${var.project_name}/dev"
  enabled      = true
}
