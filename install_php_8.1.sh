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
echo exit.