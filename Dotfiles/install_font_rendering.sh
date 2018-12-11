#!/bin/bash

echo "Installing font config..."

fc_dir="/etc/fonts/"
fc_file="local.conf"
if [ -f "$fc_dir""$fc_file" ]; then
    echo "File exists! Backing it up..."
    sudo cp "$fc_dir""$fc_file" "$fc_dir""$fc_file.bak"
fi

sudo cp "$fc_file" "$fc_dir""$fc_file"

echo "Creating Xresources..."

fc_dir="/home/$USER/"
fc_file=".Xresources"

if [ -f "$fc_dir""$fc_file" ]; then
    echo "File exists! Backing it up..."
    cp "$fc_dir""$fc_file" "$fc_dir""$fc_file.bak"
fi

cp "$fc_file" "$fc_dir""$fc_file"

echo "Reloading configuration..."
xrdb -merge ~/.Xresources
