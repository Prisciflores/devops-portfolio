# 🛡️ Ansible Linux Audit

Este proyecto utiliza **Ansible** para realizar una auditoría básica de sistemas Linux, recolectando información clave sobre el estado y configuración de la máquina.

---

## 📌 ¿Qué hace este playbook?

Recolecta información del sistema y genera un informe legible con los siguientes datos:

- Información del sistema (OS, kernel, arquitectura, uptime)
- Uso de disco y memoria RAM
- Uso de CPU y procesos más pesados
- Información de red
- Usuarios del sistema y sudoers
- Servicios activos y estado de servicios críticos (`sshd`, `nginx`)
- Reglas de firewall (`ufw`, `iptables`)
- Tareas programadas (crontabs, /etc/cron.*)
- Directorios críticos y uso de espacio
- Últimos intentos fallidos de login
- Paquetes instalados y actualizables

---

## 📌 ¿Qué hace este playbook?

Recolecta información del sistema y genera un informe legible con los siguientes datos:

### 🖥️ Información del sistema
- Hostname, sistema operativo, versión y arquitectura
- Versión del kernel
- Uptime

### 💽 Recursos
- Uso de disco (`df -h`)
- Uso de memoria (`free -m`)
- Procesos que más consumen CPU
- Procesos que más consumen memoria

### 🌐 Red
- Interfaces de red, direcciones IP y MAC
- Información de red (`ip a`)

### 👥 Usuarios
- Todos los usuarios del sistema (`/etc/passwd`)
- Usuarios con permisos sudo
- Usuarios actualmente conectados (en futuras versiones)

### 🔄 Servicios
- Servicios activos (`systemctl`)
- Estado de `sshd` (servicio SSH)
- Estado de `nginx` (si está instalado)

### 🔥 Firewall
- Reglas de `ufw` (si existe)
- Reglas de `iptables` (si está instalado)

### ⏱ Tareas automáticas
- Crontabs del usuario actual
- Tareas programadas en `/etc/cron.*`

### 📁 Directorios críticos
- Uso de espacio en `/var/log`, `/home`, `/tmp`
- Tamaño de archivos clave si se desea auditar logs (se puede extender)

### ⚠️ Seguridad básica
- Últimos intentos fallidos de login (`/var/log/auth.log`)
- Usuarios con permisos elevados (grupo `sudo`)

### 📦 Paquetes
- Lista de paquetes instalados (`dpkg -l`)
- Lista de paquetes actualizables (`apt list --upgradable`)

---

## 📁 Estructura del proyecto

```bash
ansible-linux-audit/
├── inventory.ini              # Inventario Ansible (localhost o IP remota)
├── playbook.yml               # Playbook principal que llama al rol
├── roles/
│   └── audit/
│       ├── tasks/
│       │   └── main.yml       # Tareas que recolectan la información
│       ├── templates/
│       │   └── report.txt.j2  # Plantilla Jinja2 para generar el informe
│       └── files/             # (opcional) Archivos adicionales si se requieren

## 🚀 Cómo usar

### 1. Clona este repositorio
```bash
git clone https://github.com/tu-usuario/ansible-linux-audit.git
cd ansible-linux-audit

---

## Configura tu archivo inventory.ini

✅ Opción 1: Desde la misma máquina

[servers]
localhost ansible_connection=local

🌐 Opción 2: Desde otra máquina (por red)

[servers]
mi_servidor ansible_host=192.168.X.X ansible_user=mi_usuario

---

🛠️ Ejecuta el playbook

ansible-playbook -i inventory.ini playbook.yml --ask-become-pass

#--ask-become-pass permite a Ansible pedir tu contraseña para ejecutar tareas con sudo

---

📄 Salida

/tmp/linux_audit_report.txt

---

#Para verlo

cat /tmp/linux_audit_report.txt

---

## 📦 Requisitos

```bash
pip install ansible

---

📌 Observaciones

- El informe incluye secciones aunque ciertos servicios no estén instalados, dejando constancia clara de su ausencia.

- Puedes extender el playbook para agregar más servicios o validaciones de seguridad.

- Este proyecto es ideal como base para soluciones de hardening, monitoreo o auditoría automatizada.


✨ Autor
Priscila Flores – DevOps | Cloud Engineer  
📍 Santiago, Chile
