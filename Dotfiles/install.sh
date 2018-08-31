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
	# When applying permissions, play smart, not hard
	if [ -f /home/$USER/$file ]; then
		chmod 600 /home/$USER/$file
	else
		chmod 700 /home/$USER/$file
	fi
done
