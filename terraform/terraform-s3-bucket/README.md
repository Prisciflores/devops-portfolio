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
