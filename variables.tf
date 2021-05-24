variable "cidr_block" {
  description = "CIDR range for the vpc"
}

variable "tenancy" {
  description = "instance tenancy"
}

variable "dns_support" {
  description = "boolean value for dns support"
}

variable "vpc_tags" {
  description = "tags for vpc"
}

variable "subnets" { 
  description = "subnet range"
}

variable "azs" {
  description = "availablility zones to deploy resources in"
}

variable "region" {
  default = "ap-south-1"
  description = "region where to want to work"
}


variable "instance_ami" {
  description = "id of the ami you want to create your instances with"
}

variable "instance" {
  description = "size of the instance you want to launch"
}
