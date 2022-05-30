#!/bin/bash

echo Instalar npm debian
sleep 10s

echo actualizar sistema
sudo apt update && sudo apt upgrade -y

echo Instalacion
sleep 10s
sudo apt install nodejs npm

echo exit.