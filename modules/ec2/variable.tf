variable "subnets_ids" { 
    description = "ids of the subnets to launch the vpc in"
}

variable "instance_ami" {
    description = "id of the ami you want to create your instances with"
}

variable "instance" {
    description = "size of the instance you want to launch"
}


variable "tenancy" {
  description = "instance tenancy"
}

variable "azs" {
  description = "availablility zones to deploy resources in"
}

variable "region" {
  default = "ap-south-1"
  description = "region where to want to work"
}
