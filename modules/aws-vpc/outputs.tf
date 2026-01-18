output "vpc_id" {
  value = aws_vpc.dev_vpc.id
}

output "sg_id" {
  value = aws_security_group.dev_sg.id
}
