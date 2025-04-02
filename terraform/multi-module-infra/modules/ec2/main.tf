# Recurso: Security Group para permitir SSH
resource "aws_security_group" "this" {
  name        = "${var.project_name}-sg"
  description = "Permitir SSH"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # ⚠️ Permite desde cualquier IP. Reemplazar si es necesario.
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-sg"
  }
}

# Recurso: Instancia EC2
resource "aws_instance" "this" {
  ami                         = var.ami_id                # ID de la imagen a usar
  instance_type               = var.instance_type         # Tipo de instancia
  subnet_id                   = var.subnet_id             # Subred pública desde el módulo VPC
  vpc_security_group_ids      = [aws_security_group.this.id]
  associate_public_ip_address = true

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
