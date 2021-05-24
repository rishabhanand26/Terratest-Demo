output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "sg_id" {
  value = module.vpc.sg_id
}

output "instance_id" {
  value = module.ec2.instance_id
}


output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}
