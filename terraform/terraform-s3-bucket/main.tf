# Definimos el proveedor de AWS y la región a utilizar
provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "this" {
  bucket        = var.bucket_name
  force_destroy = false

  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

# Activamos el versionado del bucket (útil para recuperación de versiones anteriores)
resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"                   # Activa el versionado
  }
}

# Habilitamos el cifrado por defecto del bucket (SSE-S3 con AES256)
resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"           # Tipo de cifrado por defecto
    }
  }
}

# Establece el control de acceso del bucket como privado
resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"                     # Solo accesible por el propietario
}


