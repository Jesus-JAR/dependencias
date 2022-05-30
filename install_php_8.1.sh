#!/bin/bash

echo Instalar php 8.1
echo actualizar sistema
sudo apt update && sudo apt upgrade -y
curl -sSL https://packages.sury.org/php/README.txt | sudo bash -x
sudo apt update
sudo apt upgrade
sudo apt install php8.1 libapache2-mod-php8.1 -y
sudo systemctl restart apache2

echo Instalado php 8.1
echo exit.