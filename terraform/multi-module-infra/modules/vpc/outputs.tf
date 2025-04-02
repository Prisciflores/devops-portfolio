# ID de la VPC creada (útil para otros módulos)
output "vpc_id" {
  value = aws_vpc.this.id
}

# ID de la subred pública (usado por EC2 u otros)
output "subnet_id" {
  value = aws_subnet.public.id
}
