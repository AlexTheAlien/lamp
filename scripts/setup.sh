#!/bin/bash

echo 'MYSQL_SECURE_INSTALLATION REQUIRES USER INPUT TO RUN, MAKE SURE YOU ARE READY TO RESPOND TO ITS PROMPTS!'
read -p "Press any key to continue..."
sudo apt update -y && sudo apt upgrade -y
sudp apt install apache2
sudo apt install mysql-server
# printf "y\ny\ny\ny\ny\ny" | 
sudo mysql_secure_installation

# echo 'Do you want to install WordPress? y/n'
# read RESPONSE
# if [ $RESPONSE -eq 'y']
# then
#     sudo wget https://wordpress.org/latest.tar.gz
# fi

#run chmod +x to make this executable