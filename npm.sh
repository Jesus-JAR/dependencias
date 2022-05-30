#!/bin/bash

echo Instalar npm debian
sleep 10s

echo actualizar sistema
sudo apt update && sudo apt upgrade -y

echo Instalacion
sudo apt install nodejs npm

echo exit.