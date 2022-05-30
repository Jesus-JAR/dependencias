#!/bin/bash

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



