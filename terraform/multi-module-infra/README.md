# 🚀 Infraestructura Modular con Terraform

Este proyecto implementa una infraestructura básica en AWS utilizando **Terraform con módulos reutilizables**. Está diseñado para separar responsabilidades, mejorar la organización y facilitar la reutilización de código.

## 📦 Módulos incluidos

- **VPC**: Crea una red VPC con subred pública, gateway de internet, tabla de rutas y asociación.
- **EC2**: Crea una instancia EC2 en la subred pública, con Security Group que permite acceso SSH.

## 📁 Estructura del proyecto

```
multi-module-infra/
├── main.tf                # Llama a los módulos
├── variables.tf           # Variables globales
├── outputs.tf             # Salidas desde los módulos
├── modules/
│   ├── vpc/
│   │   ├── main.tf        # Recursos de red (VPC, Subnet, IGW, Route Table)
│   │   ├── variables.tf   # Variables del módulo VPC
│   │   └── outputs.tf     # Outputs del módulo VPC
│   └── ec2/
│       ├── main.tf        # Recurso EC2 y Security Group
│       ├── variables.tf   # Variables del módulo EC2
│       └── outputs.tf     # Outputs del módulo EC2
└── README.md              # Descripción del proyecto
```

## 🧰 Requisitos

- [Terraform](https://developer.hashicorp.com/terraform) instalado
- Cuenta de AWS con credenciales configuradas (`~/.aws/credentials` o `AWS_PROFILE`)
- Permisos para crear recursos de red (VPC, Subnets, IGW, EC2)

## 🚀 Uso

1. Clona el repositorio y ve a la carpeta `multi-module-infra`:

```bash
terraform init
terraform plan
terraform apply
```

2. Puedes ajustar los valores por defecto en `variables.tf` para personalizar tu infraestructura:
   - CIDR de la VPC y Subred
   - Zona de disponibilidad
   - AMI y tipo de instancia EC2

## 🔒 Recursos creados

- VPC
- Subred pública
- Internet Gateway
- Route Table + Asociación
- Security Group para SSH
- Instancia EC2 pública

## 📝 Notas

- Este es un ejemplo modular. Se pueden seguir agregando más módulos como RDS, S3, Load Balancer, etc.
