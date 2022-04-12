terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./network"
    
}

module "ec2" {
  source = "./ec2"
  security_group_id = module.network.sg_id
  public_subnet_id = module.network.public_subnet_id
}