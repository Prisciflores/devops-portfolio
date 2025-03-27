# Apache Web Server con Ansible

Este es un proyecto simple pero representativo creado por mi **Priscila** para mi portafolio de herramientas DevOps.  
El objetivo es demostrar el uso de **Ansible** para automatizar la instalación y configuración de un servidor Apache en una máquina local.

---

## 📌 ¿Qué hace este playbook?

- Instala Apache en la máquina (usando el módulo `apt`).
- Crea una página de bienvenida personalizada en `/var/www/html/index.html`.

---

## 🛠 Requisitos

- Ansible instalado.
- Sistema operativo basado en Debian/Ubuntu.
- Permisos de sudo (para instalar paquetes).

---

## 🚀 Cómo ejecutarlo

1. Clona este repositorio o copia los archivos.  
2. Ejecuta el siguiente comando:  
3. Abre tu navegador y entra a [http://localhost](http://localhost)



```bash
ansible-playbook -i hosts.ini install_apache.yml


## 📁 Estructura del proyecto

apache-webserver/
├── install_apache.yml
├── hosts.ini
└── README.md

---

## 🧑💻 Autor

Priscila Flores – DevOps | Cloud Engineer  
📍 Santiago, Chile
  



