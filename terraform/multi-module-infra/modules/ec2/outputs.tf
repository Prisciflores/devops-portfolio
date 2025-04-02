# IP pública de la instancia (útil para conectarse)
output "public_ip" {
  value = aws_instance.this.public_ip
}

# ID de la instancia EC2
output "instance_id" {
  value = aws_instance.this.id
}
