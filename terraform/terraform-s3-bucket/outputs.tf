# Muestra el nombre del bucket creado en la salida de Terraform
output "bucket_name" {
  description = "Nombre del bucket creado"
  value       = aws_s3_bucket.this.bucket
}

# Muestra el ARN (Amazon Resource Name) del bucket
output "bucket_arn" {
  description = "ARN del bucket"
  value       = aws_s3_bucket.this.arn
}
