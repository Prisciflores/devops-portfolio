# Proveedor AWS: define la región donde se crearán los recursos
provider "aws" {
  region = var.region  # La región se toma desde variables.tf
}

# Llamada al módulo VPC
module "vpc" {
  source              = "./modules/vpc"            # Ruta al módulo VPC
  vpc_cidr            = var.vpc_cidr               # CIDR para la VPC
  public_subnet_cidr  = var.public_subnet_cidr     # CIDR para la subred pública
  availability_zone   = var.availability_zone      # Zona donde se desplegará la subred
  project_name        = var.project_name           # Nombre del proyecto (para etiquetas)
}
