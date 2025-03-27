# Crear usuario con acceso SSH - Ansible

Este playbook crea un usuario con acceso SSH y permisos de `sudo` en una máquina local Linux.  
Forma parte de mi  portafolio para demostrar automatización de tareas comunes con Ansible.

---

## ✨ ¿Qué hace este playbook?

- Crea un usuario (`devopsuser`)
- Configura su directorio `.ssh`
- Agrega una clave pública autorizada
- (Opcional) Le otorga permisos de sudo sin contraseña

---

## 🛠 Requisitos

- Ansible instalado
- Ubuntu/Debian con acceso sudo
- Clave pública SSH válida

---

## 🚀 Cómo ejecutarlo

```bash
ansible-playbook -i hosts.ini create_user.yml --ask-become-pass

## 📁 Estructura del proyecto

user-ssh-setup/
├── create_user.yml
├── hosts.ini
└── README.md

## 🧑💻 Autor

Priscila Flores – DevOps | Cloud Engineer  
📍 Santiago, Chile
