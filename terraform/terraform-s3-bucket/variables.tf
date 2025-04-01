# Variable para definir la región de AWS
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"  # Puedes cambiarla si deseas otra región
}

# Variable obligatoria para asignar el nombre del bucket
variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}

# Mapa de etiquetas opcionales para aplicar al bucket
variable "tags" {
  description = "Etiquetas aplicadas al bucket"
  type        = map(string)
  default     = {
    Environment = "Dev"                  # Ambiente del proyecto
    Owner       = "Priscila"             # Tu nombre como dueña
    Project     = "Terraform S3 Bucket"  # Nombre del proyecto
  }
}
