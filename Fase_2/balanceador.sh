#!/bin/bash
set -x

#-----------------------------------
# Variables de configuración
#-----------------------------------

IP_FRONT_1=172.31.90.3
IP_FRONT_2=172.31.95.232

# Actualizamos la lista de paquetes
apt update

#Actualizamos los paquete
apt upgrade -y

# APACHE
apt install apache2 -y

#Activamos los módulos
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html
a2enmod lbmethod_byrequests

# Descargamos y copiamos el archivo de configuración de Apache
cp /home/ubuntu/ASIR2-IAW-Practica08/Fase_2/000-default.conf /etc/apache2/sites-available/

#Reemplazamos los valores de IP-HTTP-SERVER-1 y IP-HTTP-SERVER-2
sed -i "s/ip-http-server-1/$IP_FRONT_1/" /etc/apache2/sites-available/000-default.conf
sed -i "s/ip-http-server-2/$IP_FRONT_2/" /etc/apache2/sites-available/000-default.conf

#Reiniciamos
systemctl restart apache2
