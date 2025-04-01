# ID de la VPC creada, obtenido desde el módulo
output "vpc_id" {
  value = module.vpc.vpc_id
}

# ID de la subred pública creada, útil para módulos que requieran red (como EC2)
output "subnet_id" {
  value = module.vpc.subnet_id
}
