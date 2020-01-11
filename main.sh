#! /bin/bash

if ! dpkg -s php; then
   echo -e "PHP package not found!"
   sudo apt install php
fi

if ! dpkg -s mysql-server; then
    echo -e "MySQL package not found"
    sudo apt install mysql-server
fi

if ! dpkg -s nginx; then
    echo -e "nginx package not found"
    sudo apt install nginx  
fi

read -p 'Enter a domain name: ' domain
echo 'entered Domain: '$domain 