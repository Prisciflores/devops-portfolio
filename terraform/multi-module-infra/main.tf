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

# Llama al módulo EC2
module "ec2" {
  source         = "./modules/ec2"                   # Ruta al módulo EC2
  vpc_id         = module.vpc.vpc_id                 # Toma el vpc_id desde el módulo vpc
  subnet_id      = module.vpc.subnet_id              # Toma el subnet_id desde el módulo vpc
  ami_id         = var.ami_id                        # Imagen AMI definida por el usuario
  instance_type  = var.instance_type                 # Tipo de instancia definido por el usuario
  project_name   = var.project_name                  # Nombre común para etiquetas
}

