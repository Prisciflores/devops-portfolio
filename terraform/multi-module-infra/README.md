# 🚀 Infraestructura Modular con Terraform

Este proyecto implementa una infraestructura básica en AWS utilizando **Terraform con módulos reutilizables**. Está diseñado para separar responsabilidades, mejorar la organización y facilitar la reutilización de código.

## 📦 Módulos incluidos

- **VPC**: Crea una red VPC con subred pública, gateway de internet, tabla de rutas y asociación.

## 📁 Estructura del proyecto

```
multi-module-infra/
├── main.tf                # Llama a los módulos
├── variables.tf           # Variables globales
├── outputs.tf             # Salidas desde los módulos
├── modules/
│   └── vpc/
│       ├── main.tf        # Recursos de red (VPC, Subnet, IGW, Route Table)
│       ├── variables.tf   # Variables del módulo VPC
│       └── outputs.tf     # Outputs del módulo VPC
└── README.md              # Descripción del proyecto
```

## 🧰 Requisitos

- [Terraform](https://developer.hashicorp.com/terraform) instalado
- Cuenta de AWS con credenciales configuradas (`~/.aws/credentials` o `AWS_PROFILE`)
- Permisos para crear recursos de red (VPC, Subnets, IGW)

## 🚀 Uso

1. Clona el repositorio y ve a la carpeta `multi-module-infra`:

```bash
terraform init
terraform plan
terraform apply
```

2. Se puede ajustar los valores por defecto en `variables.tf` para personalizar tu VPC.

## 🔒 Recursos creados

- VPC
- Subred pública
- Internet Gateway
- Route Table + Asociación

## 📝 Notas

- Este es solo el primer módulo de la infraestructura.
- En siguientes pasos se puede agregar más módulos (por ejemplo, EC2, RDS, S3, etc.).
