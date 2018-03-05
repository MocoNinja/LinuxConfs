#! /bin/bash

echo "Copiando configuración de zsh..."
cp .zshrc ~/
echo "Copiando configuración de vim..."
cp .vimrc ~/
echo "Copiando configuración de OpenBox..."
cp rc.xml ~/.config/openbox
echo "Copia de archivos de configuración finalizada!"
