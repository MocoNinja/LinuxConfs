#! /bin/bash

echo "Copiando configuración de zsh..."
cp ~/.zshrc	.zshrc 
echo "Copiando configuración de vim..."
cp ~/.vimrc .vimrc
echo "Copiando configuración de OpenBox..."
cp ~/.config/openbox/rc.xml rc.xml
echo "Copia de archivos de configuración finalizada!"
echo "Copiando XResources..."
cp ~/.XResources .XResources
echo "Copiando font config..."
sudo cp /etc/fonts/local.conf local.conf
echo "Copia de configuraciones de fuente finalizada!"
echo "NO OLVIDES SUBIR LOS CAMBIOS"
echo "!!!"
