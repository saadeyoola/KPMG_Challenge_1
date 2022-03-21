output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_1_id" {
  value = aws_subnet.PublicSubnet-1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.PublicSubnet-2.id
}
