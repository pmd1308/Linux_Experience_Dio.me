#!/bin/bash
echo "Atualizando"
apt-get update
apt-get upgrade -y
echo "Instalando os componentes"
apt-get install apache2 unzip -y
echo "Baixando e copiando arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
