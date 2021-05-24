output "vpc_id"{
value = aws_vpc.test.id
}

output "subnet_ids" {
  value = aws_subnet.subnet.*.id
}

output "sg_id" {
  value = aws_security_group.sg.*.id
}
