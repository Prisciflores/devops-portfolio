# Terraform S3 Bucket

Este proyecto crea un bucket de Amazon S3 con las siguientes configuraciones:

- Versionado habilitado
- Cifrado por defecto con AES256 (SSE-S3)
- Política privada
- Etiquetas predefinidas
- Protección contra eliminación accidental
- Estado local de Terraform

## Requisitos

- Terraform instalado
- AWS CLI configurado con credenciales válidas

## Uso

1. Clonar este repositorio
2. Ejecutar los siguientes comandos:

```bash
terraform init
terraform plan -var="bucket_name=mi-nombre-de-bucket"
terraform apply -var="bucket_name=mi-nombre-de-bucket"
```

> ⚠️ Recordar que el nombre del bucket debe ser único a nivel global en S3.

## Variables

- `region`: Región de AWS (por defecto `us-east-1`)
- `bucket_name`: Nombre del bucket (obligatorio)
- `tags`: Mapa de etiquetas (con valores por defecto)

## Salidas

- `bucket_name`: Nombre del bucket creado
- `bucket_arn`: ARN del bucket

## Estructura del proyecto

```
terraform-s3-bucket/
├── main.tf          # Define el recurso S3 y su configuración
├── variables.tf     # Variables de entrada
├── outputs.tf       # Salidas del recurso
├── .gitignore       # Archivos ignorados por Git
└── README.md        # Descripción del proyecto

