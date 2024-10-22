#!/bin/bash

# Actualiza los repositorios y asegura que wget está instalado
sudo apt update && sudo apt install -y wget unzip openjdk-11-jdk libnss3-tools libcanberra-gtk-module libcanberra-gtk3-module

# Descarga AutoFirma desde la URL proporcionada
echo "Descargando AutoFirma..."
wget --user-agent="Mozilla/5.0" -O AutoFirma_Linux.zip https://estaticos.redsara.es/comunes/autofirma/1/8/3/AutoFirma_Linux_Debian.zip

# Descomprime el archivo ZIP
echo "Descomprimiendo AutoFirma..."
unzip AutoFirma_Linux.zip -d AutoFirma_Linux

# Instalar el paquete .deb de AutoFirma
echo "Instalando AutoFirma..."
sudo dpkg -i AutoFirma_Linux/AutoFirma_1_8_3.deb

# Verificar si faltan dependencias y corregirlas
echo "Corrigiendo dependencias faltantes..."
sudo apt --fix-broken install -y

# Finalizado
echo "Instalación completada."
