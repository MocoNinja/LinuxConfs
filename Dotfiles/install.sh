#! /bin/bash

files2install=".bashrc .vimrc .bash_conf"
dir=$(pwd)
for file in $files2install; do
	if [ -f "/home/$USER/$file" ]; then
		echo "/home/$USER/$file already exists, so I am going to back it..."
		mv "/home/$USER/$file" "/home/$USER/$file.bak"
	fi
	echo "Linking $file..."
	ln -s "$dir/$file" "/home/$USER/$file"
	echo "Giving permissions to $USER..."
	chown -R $USER:$USER /home/$USER/$file
	chmod 664 /home/$USER/$file
done
