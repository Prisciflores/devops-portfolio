# Crea la VPC principal
resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr               # Rango de direcciones IP para la VPC
  enable_dns_support   = true                       # Habilita la resolución DNS dentro de la VPC
  enable_dns_hostnames = true                       # Habilita nombres DNS para instancias

  tags = {
    Name = "${var.project_name}-vpc"                # Etiqueta con el nombre del proyecto
  }
}

# Crea un Internet Gateway para permitir acceso a Internet
resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id                          # Asocia el IGW a la VPC

  tags = {
    Name = "${var.project_name}-igw"
  }
}

# Crea una subred pública
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.this.id         # Asocia la subred a la VPC
  cidr_block              = var.public_subnet_cidr  # Rango IP de la subred
  map_public_ip_on_launch = true                    # Asigna IP pública automáticamente
  availability_zone       = var.availability_zone   # Zona específica (ej: us-east-1a)

  tags = {
    Name = "${var.project_name}-subnet-public"
  }
}

# Crea una tabla de rutas para salida a Internet
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"                         # Ruta para todo el tráfico
    gateway_id = aws_internet_gateway.this.id       # A través del IGW
  }

  tags = {
    Name = "${var.project_name}-rt-public"
  }
}

# Asocia la tabla de rutas a la subred pública
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
