# Región donde se crearán los recursos
variable "region" {
  default = "us-east-1"
}

# CIDR block para la VPC (red principal)
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# CIDR block para la subred pública
variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

# Zona de disponibilidad donde se desplegará la subred pública
variable "availability_zone" {
  default = "us-east-1a"
}

# Nombre del proyecto (para usar en etiquetas de recursos)
variable "project_name" {
  default = "multi-module-demo"
}

# AMI por defecto para us-east-1 (Amazon Linux 2)
variable "ami_id" {
  description = "AMI ID para la instancia EC2"
  type        = string
  default     = "ami-0c02fb55956c7d316"  # Amazon Linux 2 en us-east-1
}

# Tipo de instancia EC2
variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}
