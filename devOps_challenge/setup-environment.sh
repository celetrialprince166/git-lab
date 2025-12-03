#!/bin/bash

set -euo pipefail


echo " Starting enviromnet setup ..."
# mkdir -p logs configs scripts


# Function to create and check directories 

create_dir(){
	if [ -d "$1" ]; then
		echo "Directory already exists: $1"
	else
		echo " Creating directory: $1"
		mkdir "$1"
	fi
}



create_dir logs
create_dir configs
create_dir scripts


echo "Creating files ...."

echo "System log files for all system logs " > logs/system.log
echo "System and app configurations here " > configs/app.conf
echo " # Backup scripts go here " > scripts/backup.sh


echo "Setting permissions ... " 
chmod 644 logs/system.log  
chmod 444 configs/app.conf
chmod 755 scripts/backup.sh

echo "Displaying file tree structure ::"
tree.

echo "Permissions on files "

ls -lR .


echo "Setup complete"
