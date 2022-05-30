#!/bin/bash

echo Instalar npm debian
sleep 10s

echo actualizar sistema
sudo apt update && sudo apt upgrade -y

echo Instalacion
sleep 10s

sudo apt install nodejs npm
read -p "Continue (y/n)?" choice
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac

echo exit.