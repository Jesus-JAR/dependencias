#!/bin/bash

echo php 8.1
echo actualizar sistema
sleep 5s

sudo apt update && sudo apt upgrade -y
curl -sSL https://packages.sury.org/php/README.txt | sudo bash -x
sudo apt update
sudo apt upgrade

echo Instalar php 8.1
sleep 5s

sudo apt install php8.1 libapache2-mod-php8.1 -y

echo Deshabilitar php 8.0
sleep 5s
sudo a2dismod php8.0

echo habilitar php 8.1
sleep 5s
sudo a2enmod php8.1

sudo systemctl restart apache2

echo Instalado php 8.1
echo exit php install.
sleep 6s

echo Instalar npm debian
sleep 5s

echo actualizar sistema
sudo apt update && sudo apt upgrade -y

echo Instalacion
sleep 5s

sudo apt install nodejs npm
echo exit install nodejs.
sleep 5s

echo Instalar Composer debian
sleep 5s

echo actualizar sistema
sudo apt-get update

echo Instalacion
sleep 5s
sudo apt install curl php-cli php-mbstring git unzip

echo Descargamos composer
sleep 5s
curl -sS https://getcomposer.org/installer -o composer-setup.php

echo Comprobar integridad de lo que hemos descargado
echo Creamos variable
sleep 5s
HASH="$(wget -q -O - https://composer.github.io/installer.sig)"

echo Comprobamos
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Instalador verificado'; } else { echo 'Instalador corrupto'; unlink('composer-setup.php'); } echo PHP_EOL;"

echo Instalar Composer de forma global.
sleep 5s
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

echo exit finish install..
sleep 3s