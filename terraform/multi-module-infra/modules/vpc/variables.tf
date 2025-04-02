# CIDR para la VPC (ej: 10.0.0.0/16)
variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
}

# CIDR para la subred pública (ej: 10.0.1.0/24)
variable "public_subnet_cidr" {
  description = "CIDR block para la subred pública"
  type        = string
}

# Zona de disponibilidad (ej: us-east-1a)
variable "availability_zone" {
  description = "Zona de disponibilidad para la subred"
  type        = string
}

# Nombre del proyecto (para etiquetas)
variable "project_name" {
  description = "Nombre del proyecto para etiquetado"
  type        = string
}
