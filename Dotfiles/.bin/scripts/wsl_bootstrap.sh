#!/bin/bash

echo "Launching WSL services..."

services="mysql apache2"

for service in $services; do
if hash $service 2>/dev/null; then
        sudo service $service start
    else
        echo "$service was not detected as installed. Skipping..."
    fi
done
