
# Instalación de AutoFirma y Certificado FNMT en Ubuntu

Este repositorio contiene dos scripts: uno para instalar **AutoFirma** y otro para instalar tu **certificado FNMT** en Ubuntu. Sigue los pasos a continuación para realizar ambas instalaciones.

## Requisitos

- Ubuntu 20.04 o superior.
- Certificado FNMT en formato `.p12` o `.pfx`.


## Clonar repositorio

```bash
git clone https://github.com/diverso-lab/autofirma-ubuntu
cd autofirma-ubuntu
```

## Instalación de Autofirma

Ejecuta el script de instalación de AutoFirma:

```bash
chmod +x install_autofirma.sh
./install_autofirma.sh
```

## Instalación del Certificado FNMT

Asegúrate de tener el archivo `.p12` o `.pfx` de tu certificado FNMT disponible.

Ejecuta el script de instalación del certificado:

```bash
chmod +x install_certificate.sh
./install_certificado_fnmt.sh /ruta/al/certificado.p12
```

Sustituye `/ruta/al/certificado.p12` por la ruta real de tu certificado.

Este script instalará el certificado FNMT en tu sistema y lo dejará listo para usar en aplicaciones que lo requieran, como AutoFirma.
