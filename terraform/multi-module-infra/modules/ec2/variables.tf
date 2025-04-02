# ID de la VPC (necesario para el Security Group)
variable "vpc_id" {
  description = "ID de la VPC"
  type        = string
}

# ID de la subred donde se lanzará la EC2
variable "subnet_id" {
  description = "ID de la subred pública"
  type        = string
}

# AMI para la instancia
variable "ami_id" {
  description = "AMI ID de la instancia EC2"
  type        = string
}

# Tipo de instancia (ej: t2.micro)
variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

# Nombre del proyecto para etiquetas
variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
}
