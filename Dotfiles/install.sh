#! /bin/bash

echo "# --------------------------------------------------- #"
echo "# ------ Script de respaldo de configuraciones ------ #"
echo "# --------------------------------------------------- #"

echo "Copiando configuración de zsh..."
cp .zshrc ~/
echo "Copiando configuración de vim..."
cp .vimrc ~/
# echo "Copiando configuración de OpenBox..."
# cp rc.xml ~/.config/openbox/rc.xml
echo "Copia de archivos de configuración finalizada!"
# echo "# --------------------------------------------------- #"
# echo "copiando configuración de fuentes..."
# echo "# --------------------------------------------------- #"
# sudo cp local.conf /etc/fonts/local.conf
# cp .Xresources ~/
# xrdb -merge ~/.Xresources
# echo "fuentes configuradas..."
echo "# --------------------------------------------------- #"
