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

if ! grep -q $domain /etc/hosts; then
    sudo /bin/bash -c "echo -e '127.0.0.1 $domain'>>/etc/hosts"
fi