# ♻️ Backup de Archivos de Configuración con Ansible

Este proyecto automatiza el proceso de respaldar archivos de configuración en una máquina Linux usando **Ansible**. Forma parte de mi portafolio profesional para demostrar buenas prácticas en automatización.

---

## ✨ ¿Qué hace este playbook?

- 📦 Crea una copia comprimida (`.tar.gz`) de archivos y carpetas de configuración.
- ☁️ Alternativamente, sube los backups a un bucket S3.
- 🕒 Se configura una tarea programada con `cron` para ejecutarse automáticamente.

---

## 📋 Requisitos

- Ansible instalado.
- Permisos de `sudo`.
- Acceso a AWS (si se usa la opción S3).

---

## 🚀 Cómo ejecutarlo

1. Clona este repositorio o copia los archivos.  
2. Ejecuta uno de los siguientes comandos según el tipo de respaldo que necesites:

   - Para guardar en un bucket S3:  
     ```bash
     ansible-playbook -i hosts.ini backup_config.yml --extra-vars "backup_type=s3"
     ```

   - Para crear un archivo `.tar.gz` local:  
     ```bash
     ansible-playbook -i hosts.ini backup_config.yml --extra-vars "backup_type=tar"

3. Verifica que el archivo `.tar.gz` se haya creado en la ruta especificada o que el backup esté en tu bucket S3.  
4. Para automatizar el respaldo con `cron`, agrega el cron job generado en `crontab.txt` al cron del sistema:
  
   ```bash
   crontab crontab.txt


```bash
ansible-playbook -i hosts.ini backup_config.yml --ask-become-pass

📁 Estructura del proyecto

backup-config/
├── backup_config.yml
├── vars.yml
├── README.md
└── hosts.ini

🧠 Autor

Priscila Flores — DevOps | Cloud Engineer
📍 Santiago, Chile
