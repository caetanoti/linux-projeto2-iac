#!/bin/bash

echo "Atualizando o Servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/caetanoti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

