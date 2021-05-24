provider "aws" {
  region = var.region
}


# This will create our EC2 instances with the loaded AMI above
resource "aws_instance" "application" {
  count                       = length(var.subnets_ids)
  subnet_id                   = element(var.subnets_ids, count.index)
  ami                         = var.instance_ami
  instance_type               = var.instance
  tenancy                     = var.tenancy
}

