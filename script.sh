#!/usr/bin/env bash

#se mantiene el index.html para evitar que apache sobreescriba esto
cp /var/www/html/index.html /home/vagrant

#se instala Apache server
sudo apt-get update
sudo apt-get -y install apache2 --fix-missing

#se reemplaza el archivo generado por apache con el que mantuvimos anteriormente
mv /home/vagrant/index.html /var/www/html/
