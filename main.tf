provider "aws" {
  region = var.region
}

module "vpc" {
  source      = "./modules/vpc"
  region      = var.region
  azs          = var.azs
  cidr_block  = var.cidr_block
  subnets     = var.subnets
  tenancy     = var.tenancy
  dns_support = var.dns_support
  vpc_tags    = var.vpc_tags
}

module "ec2" {
  source       = "./modules/ec2"
  subnets_ids  = module.vpc.subnet_ids
  instance     = var.instance
  tenancy      = var.tenancy
  instance_ami = var.instance_ami
  azs          = var.azs
  region       = var.region
}

