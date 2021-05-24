variable "cidr_block" {
 description  = "CIDR range for the vpc" 
}

variable "tenancy" {
  description = "Instance tenancy"
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


variable "region" {
  default = "ap-south-1"
  description = "region where to want to work"
}

variable "azs" {
  description = "availablility zones to deploy resources in"
}
