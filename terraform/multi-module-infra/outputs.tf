# ID de la VPC creada, obtenido desde el módulo
output "vpc_id" {
  value = module.vpc.vpc_id
}

# ID de la subred pública creada, útil para módulos que requieran red (como EC2)
output "subnet_id" {
  value = module.vpc.subnet_id
}

# Muestra la IP pública de la EC2
output "ec2_public_ip" {
  value = module.ec2.public_ip
}

# Muestra el ID de la instancia EC2
output "ec2_instance_id" {
  value = module.ec2.instance_id
}
