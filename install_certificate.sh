#!/bin/bash

# Verificar si el archivo del certificado fue proporcionado como argumento
if [ -z "$1" ]; then
  echo "Uso: ./install_certificado_fnmt.sh ruta/del/certificado.p12"
  exit 1
fi

CERT_PATH=$1

# Verificar si el archivo existe
if [ ! -f "$CERT_PATH" ]; then
  echo "Error: El archivo de certificado $CERT_PATH no existe."
  exit 1
fi

# Instalar dependencias necesarias para manejar certificados
echo "Instalando dependencias necesarias..."
sudo apt update && sudo apt install -y libnss3-tools openssl

# Crear directorios para almacenar el certificado
echo "Instalando el certificado FNMT..."

# Convertir el archivo .p12 a .pem sin la clave privada
openssl pkcs12 -in "$CERT_PATH" -out certificado_fnmt.pem -clcerts -nokeys -legacy

# Importar el certificado en el almacén de certificados del sistema
sudo cp certificado_fnmt.pem /usr/local/share/ca-certificates/certificado_fnmt.crt
sudo update-ca-certificates

# Limpiar archivos temporales
rm certificado_fnmt.pem

echo "El certificado ha sido instalado correctamente en el sistema."
