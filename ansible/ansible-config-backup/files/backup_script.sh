#!/bin/bash

# Script de respaldo para archivos de configuración
# Genera un archivo .tar.gz con los archivos definidos en group_vars/all.yml

BACKUP_ITEMS=(/etc/hostname /etc/hosts)
OUTPUT_DIR="/tmp/backups"
PREFIX="config-backup"
DATE=$(date +%Y%m%d-%H%M%S)
TAR_FILE="$OUTPUT_DIR/${PREFIX}-${DATE}.tar.gz"

# Crear directorio si no existe
mkdir -p "$OUTPUT_DIR"

# Crear backup
echo "Creando respaldo en $TAR_FILE..."
tar -czf "$TAR_FILE" "${BACKUP_ITEMS[@]}"

# Verificar resultado
if [ $? -eq 0 ]; then
  echo "✅ Backup creado exitosamente: $TAR_FILE"
else
  echo "❌ Error al crear el backup"
  exit 1
fi

