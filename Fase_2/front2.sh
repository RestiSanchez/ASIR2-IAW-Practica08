#!/bin/bash
set -x

#VARIABLES
IP_PRIVADA_FRONTEND_NFS_SERVER=172.31.80.57

#Actualizamos
apt update

#Instalamos apache
apt install apache2 -y

#Instalamos los módulos PHP
apt install php libapache2-mod-php php-mysql -y

#Reiniciamos el servicio de Apache
systemctl restart apache2

#Instalamos el cliente NFS
apt install nfs-common -y

#Montamos el directorio compartido entre los frontales
mount $IP_PRIVADA_FRONTEND_NFS_SERVER:/var/www/html/ /var/www/html/

#Editamos el archivo /etc/fstab
nano /etc/fstab
echo "$IP_PRIVADA_FRONTEND_NFS_SERVER:/var/www/html/ /var/www/html/ nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0"
