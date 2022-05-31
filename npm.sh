#!/bin/bash

echo Instalar npm debian
sleep 5s

echo actualizar sistema
sudo apt update && sudo apt upgrade -y

echo Instalacion
sleep 5s

sudo apt install nodejs npm
read -p "Continue (y/n)?" choice
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac

echo exit.