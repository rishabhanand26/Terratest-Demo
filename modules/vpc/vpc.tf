provider "aws" {
  region = var.region
}


resource "aws_vpc" "test" {
  cidr_block            = var.cidr_block
  instance_tenancy      = var.tenancy
  enable_dns_support    = var.dns_support
  tags                  = var.vpc_tags
}

resource "aws_subnet" "subnet"{
    count = length(var.subnets) == length(var.azs) ? length(var.azs) : 0

    vpc_id      = aws_vpc.test.id
    availability_zone               = length(regexall("^[a-z]{2}-", element(var.azs, count.index))) > 0 ? element(var.azs, count.index) : null
    cidr_block  = element(var.subnets, count.index)
    map_public_ip_on_launch = true
    tags        = {
                    Name = "Subnet for vpc"
                  }
}

resource "aws_security_group" "sg"{
    name            = "Security group for ec2 "
    description     = "Allow TLS inbound traffic"
    vpc_id          = aws_vpc.test.id
    
    ingress{
        description     = "TCP from VPC"
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = [aws_vpc.test.cidr_block]
    }
    egress{
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }
}
