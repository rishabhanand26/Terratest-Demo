output "instance_id" {
  value = aws_instance.application.*.id
}

output "instance_public_ip" {
    value = aws_instance.application.*.public_ip
}


# output "instance_key" {
#     value = aws_instance.application.key_name
# }