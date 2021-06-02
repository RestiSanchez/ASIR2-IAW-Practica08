restisanchez1999

Restisanchez99 — 26/11/2020
d) Crea el fichero de zona de resolución directa db.tunombre.sri y añade los registros
para configurar el servidor con los valores que se indican (OJO a los puntos finales)
e) Parte inicial SOA
- Nombre del servidor principal para que sea ns.tunombre.sri
- Contacto: tunombre.tunombre.sri
- Serial: 20191112
- Refresh: 6040800
- Retry: 86400
- Expire: 2419200
- TTL negativo 10800
f) En el registro servidores de nombre (NS) configuramos uno nuevo que sea
ns.tunombre.sri (la propia máquina)
g) Estable los registros de tipo A para las siguientes direcciones:
· ns.tunombre.sri
· tunombre.sri
· pcXXtunombre.sri
· router.tunombre.sri
· win.tunombre.sri
· ubuntu.tunombre.sri
h) Establece los siguientes registros de alias (CNAME)
· mail – a la máquina ubuntu
· ftp – al router
· www – a tunombre.sri (máquina anfitriona)
· nombrecompañero – a la máquina del compañero
i) Establece el registro para servidor de correo (MX)
· tunombre.sri – mail (ubuntu)
Restisanchez99 — 10/12/2020
9.-Implementar un servidor de aplicaciones en Windows Server 2012. Además de las aplicaciones que muestra por defecto, añadir alguna aplicación más. Comprobar que funciona desde un navegador web y desde la aplicación “Conexión a Escritorio remoto”. Instalamos el rol de servidor de administraciones
Restisanchez99 — 22/01/2021
c
useradd : Añadir un usuario
usermod : Modificar un usuario
userdel : Eliminar un usuario
groupadd : Añadir un grupo.
groupmod : Modificar un grupo.
groupdel : Eliminar un grupo.
el archivo /etc/passwd : en este archivo podemos ver todos los usuarios creados, sus UID y sus GID.
el archivo /etc/group : En este archivo podemos ver los GID de los grupos existentes en el sistema, y los usuarios pertenecientes a cada grupo.
el archivo /etc/shadow : En este archivo se encuentran cifradas las contraseñas de los usuarios.
-m   crea automáticamente el directorio personal del usuario

-g    grupo principal al que añadimos el usuario

-G   grupo secundario

-d   permite especificar el directorio personal del usuario, que será creado a la vez que el usuario

-s   especifica el shell por defecto que utilizará el usuario
Restisanchez99 — 31/01/2021
https://drive.google.com/drive/folders/1FHaROXEx-O4ksJkFFGA_ZikenXDrJNph
Restisanchez99 — 31/01/2021
'
Restisanchez99 — 31/01/2021
https://drive.google.com/file/d/1vCX2Y9-LB91QzX15LW8p5JjfQ5shMU3M/viewç
https://drive.google.com/file/d/1vCX2Y9-LB91QzX15LW8p5JjfQ5shMU3M/view
Google Docs
Win64OpenSSL-1_1_1d.exe
restisanchez1999 — 01/02/2021
ssh -i "IAW.pem" ubuntu@ec2-18-207-112-35.compute-1.amazonaws.com
ssh -i "IAW.pem" ubuntu@ec2-100-25-198-221.compute-1.amazonaws.com
Restisanchez99 — 01/02/2021
Punto 1. CONFIGURACIÓN PREVIA
Siguiendo la configuración de máquinas virtuales que vimos en el tema inicial, vamos a
configurar un servidor DNS en la máquina de Windows 2019 server.
IMPORTANTE: Debido a que el servidor que vamos a instalar es independiente a los
nombres de dominio que se establecen con Active Directory, para no tener problemas,
vamos a desinstalar todos los roles y características de Active Directory.
Expandir
message.txt
3 KB
b. Debemos cambiar el sufijo DNS del equipo a este dominio que vamos a crear
(esta opción se cambia donde se cambia el nombre del equipo pulsado el
botón Más)
c. En el administrador de DNS, sobre zonas de búsqueda directa crearemos
una nueva zona (tunombre.sri)
d. En el registro de inicio de autoridad (SOA) establece los siguientes valores:
Expandir
message.txt
3 KB
Restisanchez99 — 01/02/2021
;
; BIND zone file for midns.com
;

$TTL    3D
@       IN      SOA     ns.midns.com.     root.midns.com. (
                        2010111101      ; serial
                        8H              ; refresh
                        2H              ; retry
                        4W              ; expire
                        1D )            ; minimum
;
                NS      ns              ; Inet address of name server

ns              A       192.168.0.100

midns.com.      A       192.168.0.100
server          A       192.168.0.100

virtual         A       192.168.0.100

router          A       192.168.0.1     ; router ADSL
gateway         CNAME   router
gw              CNAME   router
proxy           CNAME   server
www             CNAME   virtual
restisanchez1999 — 03/02/2021
Unirse a la reunión Zoom
https://us05web.zoom.us/j/89225218579?pwd=VU9lZjZuVGlTT1VUY210M0kzVWUwZz09

ID de reunión: 892 2521 8579
Código de acceso: 104GVQ
Zoom Video
Join our Cloud HD Video Meeting
Zoom is the leader in modern enterprise video communications, with an easy, reliable cloud platform for video and audio conferencing, chat, and webinars across mobile, desktop, and room systems. Zoom Rooms is the original software-based conference room solution used around the world in board, conference, huddle, and training rooms, as well as ex...
Restisanchez99 — 07/02/2021
Punto 2. INSTALAR CLIENTES DE CORREO
1. En Windows 10 usaremos windows mail que ya viene instalado por defecto.
a. Si va a usar Windows 7 entonces instala Mozilla Thunderbird, para
Windows.
2. En Ubuntu instalaremos Mozilla Thunderbird.
a. Si has usado Windows 7 en el apartado 1 entonces instala y configura
Evolution.
Punto 3. EJERCICIOS
1. En cada uno de los clientes debemos configurar:
○ Los datos del sitio son como sigue:
○ Servidor correo saliente.
○ Servidor correo entrante.
○ Usuario y contraseña.
○ Ayuda: Ver guías del proveedor de correo.
2. Responde a las siguientes preguntas:
○ Que protocolo y puertos se usan para el envío de correos.
○ Que protocolo y puertos se usan para la recepción de correos.
○ Explica brevemente qué agentes intervienen en la transmisión de los correos
electrónicos.
Restisanchez99 — 07/02/2021

Restisanchez99 — 08/02/2021
b
Tipo de archivo adjunto: unknown
ASGBD-U4-PERMISOS-_Restituto_Sanchez_Sanchez.odt
158.57 KB
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
Restisanchez99 — 08/02/2021
k
PRACTICA 01. IIS en Windows Server (I)
Punto 1. CONFIGURACIÓN PREVIA
Siguiendo la configuración de máquinas virtuales que vimos en el tema inicial, vamos a
instalar y configurar un servidor web en la máquina de Windows 2012 server (IIS).
Punto 2. INSTALAR SERVICIO
1. Instalar servidor de DNS en vm-2012server si no lo está aún.
2. En administración del servidor. Agregar roles y características. Servidor web IIS.
3. Una vez instalado comprobar que el servidor está escuchando en el puerto TCP 80:
a. netstat -a -p TCP -n
4. Comprobar con un navegador a http://ip-servidor/ (desde una máquina externa) o a
localhost (si estas en el servidor) que el servidor está activo y sirviendo páginas web.
Punto 3. EJERCICIOS
1. Crear host virtuales (Agregar sitio web) y comprueba desde un navegador que se
accede a ellos (al index.html creado)
a. Crear Host virtual por ip en:
● IP: tu ip (por ej., para 192.168.22.77 pon 77)
● port: 80
● root: \inetpub\wwwip-IP-port-80
● nombre: -----
● un index.html con información que confirme que estás en el lugar
correcto. Por ej.:
<html><body>
<h1>Estás en el sitio web (host por ip)</h1>
IP: 192.168.22.77<br>
port: 80 <br>
name: ------- <br>
directorio web: \inetpub\wwwip-IP-port-80 <br>
</body></html>
b. Crear Host virtual por puerto 8080:
● IP: tu ip.
● port: 8080
● root: \inetpub\wwwip-IP-port-8080
● nombre: ------
● un index.html con información que confirme que estás en el lugar
correcto. (Similar al apartado a).
c. Crear Host virtual en otra IP:
● IP: tu ip + 1
● port: 80
● root: \inetpub\wwwip-IP-port-80
● nombre: -----
● un index.html con información que confirme que estás en el lugar
correcto. (Similar al apartado a).
d. Host por nombre primernombre.tudominio:
● IP: tu ip
● port: 80
● root: \inetpub\wwwprimernombre.pepe.es (si tudominio es pepe.es)
● nombre: primernombre.pepe.es (si tudominio es pepe.es)
● un index.html con información que confirme que estás en el lugar
correcto. (Similar al apartado a)
● ¡¡OJO!!: Tendrás que tener un dns que resuelva ese nombre. El
servidor y el cliente deben usar ese servidor DNS.
e. Host por nombre segundonombre.tudominio:
● IP: tu ip
● port: 80
● root: \inetpub\wwwsegundonombre.pepe.es (si tudominio es
pepe.es)
● nombre: primernombre.pepe.es (si tudominio es pepe.es)
● un index.html con información que confirme que estás en el lugar
correcto. (Similar al apartado a)
● ¡¡OJO!!: Tendrás que tener un dns que resuelva ese nombre. El
servidor y el cliente deben usar ese servidor DNS.
2. Directorios virtuales:
a. Ver IIS-DirectorioVirtual.pdf
b. Crear las siguientes carpetas virtuales en el sitio de tu ip:80.
c. Carpeta1 mapeada a la carpeta c:\Carpeta1
d. Carpeta2 mapeada a una carpeta de red compartida \tuservidor\Carpeta2
(que a su vez está en c:\Carpeta2) de tu servidor.
e. Probar en navegador: http://tuip:80/Carpeta1 y http://tuip:80/Carpeta2
3. Configurar autenticación básica por usuario a los sitios web.
a. Ver "IIS.ConfigurarAutentificacionBasica.pdf"
b. Montar autentificación básica sobre el primer host virtual.
c. Acceso a todos los usuarios de lectura.
d. Crear usuario alumno y profesor.
e. Crear en carpeta web las subcarpetas y controlar acceso (NTFS):
Alumno (acceso Alumno L/E y profesor L)
Profesor (acceso profesor L/E).
Restisanchez99 — 10/02/2021
2. Enviar correo con Telnet (sesión de smtp puerto 25), desde la propia máquina servidor
a otro agente de correo externo.
○ En este caso, se hará igual que el ejercicio anterior pero cambiaremos el
emisor y el receptor.
○ mail from:<tadeo@jones.com> [no comprueba el remitente]
○ rcpt to:<cuentatuya@gmail.com> [pon una cuenta tuya de
Gmail].
○ Comprueba en tu bandeja de correo de Gmail que ha llegado este correo.
Seguramente habrá ido a la carpeta spam.
○ Si el correo no llega, consulta los archivos de log para detectar el error.
➢ /var/log/mail.log
➢ /var/log/mail.info
➢ /var/log/mail.err
3. Gestionar correos locales con un cliente de correo de comandos.
○ Instalamos el paquete mailutils que lleva el cliente de correo mail.
➢ apt-get install mailutils.
○ Iniciamos sesión en el servidor con el usuario profesor.
○ Utiliza el comando mail para enviar un correo al usuario alumno (por defecto
el comando mail envía correos al MTA local).
➢ mail alumno@tudominio.com. (Para enviar correo usa Ctrl + D)
○ Si pones el comando mail solamente, podrás consultar los correos de ese
usuario y realizar otras muchas acciones (escribe help para ver listado
completo).
○ Debe aparecer el correo anterior.
○ Sal de la sesión profesor y entra con el usuario alumno.
○ Comprueba el correo con la orden mail. (Debe estar el del profesor)
○ Responde al correo anterior (averigua qué orden se utiliza para responder a
un correo).
Página 2 de 3
UNIDAD 5- Práctica 1. Servicios de Red e Internet. 2º ASIR.
○ Entra nuevamente con el usuario profesor. Al iniciar la sesión debe aparecer
un mensaje indicando que hay correo nuevo.
○ Consulta el correo.
○ Para finalizar entra en el servidor con el usuario root y comprueba los
buzones de los dos usuario en /var/mail.
Restisanchez99 — 10/02/2021
PRÁCTICA 03. Instalación y configuración de servidor de
correo en Linux (Parte II)
Punto 1. CONFIGURACIÓN PREVIA
En esta práctica vamos a instalar y configurar un MDA (Mail Delivery Agent) o agente de
entrega de correos, que son los procesos encargados de recibir y depositar los correos en
los buzones de los destinatarios. Utiliza los protocolos IMAP y POP para acceder a los
Expandir
message.txt
3 KB
3. Configurar el servidor Dovecot, para los protocolos POPS y IMAPS (seguros)
○ Editaremos el fichero /etc/dovecot/conf.d/10-auth.conf
○ En el fichero /etc/dovecot/conf.d/10-mail.conf estableceremos donde se
localizan los buzones de entrada de correo de cada usuario, que deben ser
los mismos que se configuraron en Postfix.
4. Finalmente debemos reiniciar todos los servicios afectados (Bind9, Postfix y Dovecot).
Es recomendable reiniciar el servidor.
5. Instalar y configurar Thunderbird en una máquina Windows cliente. Instalamos el
programa desde internet (OJO la máquina Debian debe de hacer enrutamiento para
que el Windows tenga internet) y configuraremos una cuenta de correo con los
siguientes valores:
○ Cuenta: alumno@azs.edu (la cuenta alumno debe existir en el servidor)
○ Para servidor de correo saliente (SMTP):
➢ Servidor: smtp.azs.edu
➢ Puerto: 25
➢ Seguridad: STARTTLS
➢ Método de identificación: Contraseña normal
○ Para servidor de correo entrante (IMAP)
➢ Servidor: mail.azs.edu
➢ Puerto: 993
➢ Seguridad: SSL/TLS
Restisanchez99 — 12/02/2021
PRÁCTICA 04. Servidor web Apache en Linux (II)
Punto 1. CONFIGURACIÓN PREVIA
Siguiendo con la máquina virtual del ejercicio anterior, vamos a continuar la configuración
de Apache como servidor web.
Punto 2. EJERCICIOS
1. Control de acceso a carpetas por usuario para el primer sitio creado en la práctica
anterior (ip:80)
➢ Crea una carpeta llamada datos dentro de ese sitio (ojo a los permisos) y
crean un archivo html dentro de esa carpeta dónde se especifique que es un
archivo de acceso por usuario.
➢ Debes crear un fichero passwd en apache donde se guarden los usuarios
que tendrán acceso. Para ello ejecuta el siguiente comando.
● htpasswd -c /etc/apache2/passwd filemon
(Donde filemon es el usuario creado)
➢ Edita el archivo .conf de ese sitio y añade el acceso a esa carpeta tal y como
se muestra:
➢ Guarda los cambios y reinicia el servidor.
➢ Comprueba desde un navegador que pide autenticación al acceder a la
carpeta creada.
2. Activa los directorios personales de usuarios:
a. Habilita el módulo userdir:
➢ a2enmod userdir
b. Reinicia el servidor.
c. Crea un usuario nuevo (con la orden adduser), entra con ese usuario y crea
en su directorio home la carpeta public_html.
d. Crea el archivo personal.html y comprueba que se accede desde un
navegador a esa carpeta personal.
3. Instala soporte para ssl (navegar por protocolo https):
➢ Habilitar el módulo ssl de apache.
➢ Crea un certificado autofirmado con el comando openssl y cuando lo pida
introduce tus datos.
➢ Crea un nuevo host virtual (sitio) con las siguientes características:
● IP: tu ip
● port: 80
● root: /var/www/seguro.pepe.es (si tudominio es pepe.es)
● Hay que añadir al archivo .conf las siguientes propiedades:
○ ServerName seguro.pepe.es
○ ServerAlias seguro.pepe.es
○ SSLEngine on
○ SSLCertificateFile /etc/apache2/ssl/pepe.crt
○ SSLCertificateKeyFile /etc/apache2/ssl/pepe.key
● un index.html con información que confirme que estás en el lugar
correcto.
● ¡¡OJO!!: Tendrás que tener un dns que resuelva ese nombre. El
servidor y el cliente deben usar ese servidor DNS.
➢ Habilita el nuevo sitio creado.
➢ Reinicia el servidor.
➢ Muestra en el navegador el certificado utilizado.
➢ Puedes ver un ejemplo en el siguiente enlace o un vídeo aquí.
➢ OJO: Cuando al crear tu certificado te pida el Common Name pon el nombre
del dominio del sitio (seguro.pepe.es)
➢ OJO2: Es probable que desde Chrome no puedas acceder al sitio, porque
este navegador bloquea los certificados sospechosos. Prueba con otros
navegadores.
4. Instala soporte para php.
➢ Instala php con el siguiente comando:
➢ sudo apt install php libapache2-mod-php php-mysql
➢ Comprobar que php está funcionando. Para ello crea un archivo llamado
index.php con el siguiente contenido:
<?php phpinfo(); ?>
Pon este archivo en el sitio seguro del apartado anterior (acceso por dominio
al puerto 443) y modifica el archivo de configuración del sitio para que ese
sea el archivo por defecto que se abre al acceder al sitio, es decir, sin tener
que poner el nombre de ese archivo en el navegador.
Reinicia apache.
➢ Inserta un formulario llamado formulario.html en tu sitio principal que recoja
datos personales (como la práctica de IIS) y un archivo php que devuelva los
datos insertados.
5. Instalar MariaDB (la base de datos que está en los repositorios de Debian) que es
similar a Mysql y luego phpMyAdmin para poder configurarla.
➢ Busca información de como instalar ambas cosas y muestra que se accede
desde el navegador web.
Restisanchez99 — 12/02/2021
openssl req -x509 -sha256 -newkey rsa: 2048 -keyout certificate.key -out certificate.crt -days 1024 -nodes
Restisanchez99 — 14/02/2021
ç
PRÁCTICA 03. Instalación y configuración de servidor de
correo en Linux (Parte II)
Punto 1. CONFIGURACIÓN PREVIA
En esta práctica vamos a instalar y configurar un MDA (Mail Delivery Agent) o agente de
entrega de correos, que son los procesos encargados de recibir y depositar los correos en
los buzones de los destinatarios. Utiliza los protocolos IMAP y POP para acceder a los
Expandir
message.txt
3 KB
3. Configurar el servidor Dovecot, para los protocolos POPS y IMAPS (seguros)
○ Editaremos el fichero /etc/dovecot/conf.d/10-auth.conf
○ En el fichero /etc/dovecot/conf.d/10-mail.conf estableceremos donde se
localizan los buzones de entrada de correo de cada usuario, que deben ser
los mismos que se configuraron en Postfix.
4. Finalmente debemos reiniciar todos los servicios afectados (Bind9, Postfix y Dovecot).
Es recomendable reiniciar el servidor.
5. Instalar y configurar Thunderbird en una máquina Windows cliente. Instalamos el
programa desde internet (OJO la máquina Debian debe de hacer enrutamiento para
que el Windows tenga internet) y configuraremos una cuenta de correo con los
siguientes valores:
○ Cuenta: alumno@azs.edu (la cuenta alumno debe existir en el servidor)
○ Para servidor de correo saliente (SMTP):
➢ Servidor: smtp.azs.edu
➢ Puerto: 25
➢ Seguridad: STARTTLS
➢ Método de identificación: Contraseña normal
○ Para servidor de correo entrante (IMAP)
➢ Servidor: mail.azs.edu
➢ Puerto: 993
➢ Seguridad: SSL/TLS
➢ Método de identificación: Contraseña normal
○ Una vez configurado todo, mandaremos un correo al usuario
profesor@azs.edu (el usuario profesor debe existir en el servidor).
6. Instalar y configurar Evolution en una máquina Ubuntu (u otro Linux) cliente. (Si te da
problemas puedes instalar Thunderbird también).
○ En este caso se creará una cuenta de correo para el usuario profesor con los
mismos valores que en el punto anterior.
○ Se comprobará que se ha recibido el correo del alumno y se responderá a
este mensaje.
7. Finalmente volvemos al Windows y vemos el correo recibido
Restisanchez99 — 05/05/2021
#!/bin/bash

# Configuracion del scritp
# Definimos la ruta donde vamos a guardar el archivo .htpasswd
HTTPASSWD_DIR=/home/ubuntu
HTTPASSWD_USER=usuario
Expandir
message.txt
3 KB
default
server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;

        index index.php index.html index.htm index.nginx-debian.html;

        servername ;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }

        location ~ .php$ {
                include snippets/fastcgi-php.conf;
                # With php7.4-fpm:
                fastcgi_pass unix:/run/php/php7.4-fpm.sock;
        }

        # deny access to .htaccess files, if Apache's document root
        # concurs with nginx's one
        location ~ /.ht {
                deny all;
        }
}
config.inc.php
<?php
/* vim: set expandtab sw=4 ts=4 sts=4: */
/**
 * phpMyAdmin sample configuration, you can use it as base for
 * manual configuration. For easier setup you can use setup/
 *
Expandir
message.txt
5 KB
Restisanchez99 — 05/05/2021
https://github.com/RestiSanchez/ASIR2-IAW-Practica06.git
Restisanchez99 — 05/05/2021
#!/bin/bash

# ------------------------------------------------------------------------------ Back_end ----------------------------------------------------------------------------------------------------------
# Configuración del scritp
# Definimos la contraseña de root como variable
DB_ROOT_PASSWD=root
DB_USU_PASSWD=usuario
# ------------------------------------------------------------------------------ Instalación y configuración de MySQL ------------------------------------------------------------------------------ 
# Habilitamos el modo de shell para mostrar los comandos que se ejecutan
set -x
# Actualizamos y actualizamos la lista de paquetes
apt update
apt upgrade -y
# Instalamos el sistema gestor de base de datos
apt install mysql-server -y

# Copiamos el archivo de configuración de MySQL copiando uno previamente ya modificado mysqld.cnf 
# mv mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

# Editamos el archivo de configuración de MySQL, modificando la línea 
sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf 
# Reiniciamos el servicio
sudo /etc/init.d/mysql restart
# Clonamos el repositorio
cd /home/ubuntu
rm -rf iaw-practica-lamp 
git clone https://github.com/josejuansanchez/iaw-practica-lamp
# Actualizamos la contraseña de root de MySQL
mysql -u root <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '$DB_ROOT_PASSWD';"
mysql -u root -p$DB_ROOT_PASSWD <<< "FLUSH PRIVILEGES;"

# Creamos usuario para la aplicación web y asignamos privilegios
# mysql -u root -p$DB_ROOT_PASSWD <<< "CREATE USER 'lamp_user'@'%' IDENTIFIED BY '$DB_USU_PASSWD';"
# mysql -u root -p$DB_ROOT_PASSWD <<< "GRANT ALL PRIVILEGES ON 'lamp_db'.* TO 'lamp_user'@'%';"
# mysql -u root -p$DB_ROOT_PASSWD <<< "FLUSH PRIVILEGES;"

# Introducimos la base de tados
mysql -u root -p$DB_ROOT_PASSWD < /home/ubuntu/iaw-practica-lamp/db/database.sql
GitHub
josejuansanchez/iaw-practica-lamp
Aplicación sencilla para hacer prácticas con el stack LAMP, en el módulo Implantación de Aplicaciones Web del ciclo formativo de grado superior ASIR. - josejuansanchez/iaw-practica-lamp

restisanchez1999 — 05/05/2021
#!/bin/bash

# ------------------------------------------------------------------------------ Back_end ----------------------------------------------------------------------------------------------------------
# Configuración del scritp
# Definimos la contraseña de root como variable
DB_ROOT_PASSWD=root
DB_USU_PASSWD=usuario
# ------------------------------------------------------------------------------ Instalación y configuración de MySQL ------------------------------------------------------------------------------ 
# Habilitamos el modo de shell para mostrar los comandos que se ejecutan
set -x
# Actualizamos y actualizamos la lista de paquetes
apt update
apt upgrade -y
# Instalamos el sistema gestor de base de datos
apt install mysql-server -y

# Copiamos el archivo de configuración de MySQL copiando uno previamente ya modificado mysqld.cnf 
# mv mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

# Editamos el archivo de configuración de MySQL, modificando la línea 
sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf 
# Reiniciamos el servicio
sudo /etc/init.d/mysql restart
# Clonamos el repositorio
cd /home/ubuntu
rm -rf iaw-practica-lamp 
git clone https://github.com/josejuansanchez/iaw-practica-lamp
# Actualizamos la contraseña de root de MySQL
mysql -u root <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '$DB_ROOT_PASSWD';"
mysql -u root -p$DB_ROOT_PASSWD <<< "FLUSH PRIVILEGES;"

# Creamos usuario para la aplicación web y asignamos privilegios
# mysql -u root -p$DB_ROOT_PASSWD <<< "CREATE USER 'lamp_user'@'%' IDENTIFIED BY '$DB_USU_PASSWD';"
# mysql -u root -p$DB_ROOT_PASSWD <<< "GRANT ALL PRIVILEGES ON 'lamp_db'.* TO 'lamp_user'@'%';"
# mysql -u root -p$DB_ROOT_PASSWD <<< "FLUSH PRIVILEGES;"

# Introducimos la base de tados
mysql -u root -p$DB_ROOT_PASSWD < /home/ubuntu/iaw-practica-lamp/db/database.sql
GitHub
josejuansanchez/iaw-practica-lamp
Aplicación sencilla para hacer prácticas con el stack LAMP, en el módulo Implantación de Aplicaciones Web del ciclo formativo de grado superior ASIR. - josejuansanchez/iaw-practica-lamp

restisanchez1999 — 05/05/2021
Ahora si
lemp.sh
#!/bin/bash


# Variables
# Definimos la ruta donde vamos a guardar el archivo .htpasswd
HTTPASSWD_DIR=/home/ubuntu
Expandir
message.txt
3 KB
Restisanchez99 — 05/05/2021
server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;

        index index.php index.html index.htm index.nginx-debian.html;

        servername ;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }

        # pass PHP scripts to FastCGI server
        #
        location ~ .php$ {
                include snippets/fastcgi-php.conf;
                # With php-fpm (or other unix sockets):
                fastcgi_pass unix:/run/php/php7.4-fpm.sock;
        }

        # deny access to .htaccess files, if Apache's document root
        # concurs with nginx's one
        location ~ /.ht {
                deny all;
        }
}
Restisanchez99 — 10/05/2021
https://github.com/RestiSanchez/ASIR2-IAW-Practica06.git
Restisanchez99 — hoy a las 11:21
<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        #ServerName www.example.com

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html

        <Directory "/var/www/html/">
          AllowOverride All
        </Directory>

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        # For most configuration files from conf-available/, which are
        # enabled or disabled at a global level, it is possible to
        # include a line for only one particular virtual host. For example the
        # following line enables the CGI configuration for this host only
        # after it has been globally disabled with "a2disconf".
        #Include conf-available/serve-cgi-bin.conf
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
#!/bin/bash
set -x

#VARIABLES
DB_NAME=wordpress_db
DB_USER=wordpress_user
DB_PASSWORD=wordpress_password
IP_PRIVADA_FRONTEND=localhost
IP_PRIVADA_MYSQL_SERVER=localhost
IP_MAQUINA=

#Actualizamos
apt update

#Instalamos apache
apt install apache2 -y

#Instalamos MySQL Server
apt install mysql-server -y

#Instalamos los módulos PHP
apt install php libapache2-mod-php php-mysql -y

#Copiamos el archivo info.php a /var/www/html
cp /home/ubuntu/info.php /var/www/html

#Reiniciamos el servicio de Apache
systemctl restart apache2

#Añadimos la URL del Wordpress
cd /var/www/html
wget http://wordpress.org/latest.tar.gz

#Descomprimimos el .tar.gz
tar -xzvf latest.tar.gz

#Eliminamos el tar.gz
rm latest.tar.gz

#Creamos la base de datos para wordpress
mysql -u root <<< "DROP DATABASE IF EXISTS $DB_NAME;"
mysql -u root <<< "CREATE DATABASE $DB_NAME;"
mysql -u root <<< "CREATE USER $DB_USER@$IP_PRIVADA_FRONTEND IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root <<< "GRANT ALL PRIVILEGES ON $DB_NAME.* TO $DB_USER@$IP_PRIVADA_FRONTEND;"
mysql -u root <<< "FLUSH PRIVILEGES;"

#Configuramos  el archivo de configuración de Wordpress
cd /var/www/html/wordpress
mv wp-config-sample.php wp-config.php

sed -i "s/database_name_here/$DB_NAME/" wp-config.php
sed -i "s/username_here/$DB_USER/" wp-config.php
sed -i "s/password_here/$DB_PASSWORD/" wp-config.php
sed -i "s/localhost/$IP_PRIVADA_MYSQL_SERVER/" wp-config.php

#Habilitamos las variables WP_SITEURL y WP_HOME
sed -i "/DB_COLLATE/a define('WP_SITEURL', 'http://$IP_MAQUINA/wordpress');" /var/www/html/wordpress/wp-config.php
sed -i "/WP_SITEURL/a define('WP_HOME', 'http://$IP_MAQUINA');" /var/www/html/wordpress/wp-config.php

#Copiar el archivo wordpress /index.php a /var/www/html

cp /var/www/html/wordpress/index.php /var/www/html

#Editamos el archivo wordpress /index.php

sed -i "s#wp-blog-header.php#wordpress/wp-blog-header.php#" /var/www/html/index.php

#Habilitamos el módulo mod_rewrite de Apache

a2enmod rewrite

#Movemos el archivo htaccess a /var/www/html
mv htaccess /var/www/html/.htaccess

#Copiamos el archivo de configuración de Apache
cp 000-default.conf /etc/apache2/sites-available

#Reiniciamos Apache
systemctl restart apache2 

#Configuramos el archivo wp-config.php
sed -i "/AUTH_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/SECURE_AUTH_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/LOGGED_IN_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/NONCE_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/AUTH_SALT/d" /var/www/html/wordpress/wp-config.php
sed -i "/SECURE_AUTH_SALT/d" /var/www/html/wordpress/wp-config.php
sed -i "/LOGGED_IN_SALT/d" /var/www/html/wordpress/wp-config.php
sed -i "/NONCE_SALT/d" /var/www/html/wordpress/wp-config.php

#Hacemos una llamada a la API de wordpress para obtener las security keys
SECURITY_KEYS=$(curl https://api.wordpress.org/secret-key/1.1/salt/)

#Reemplaza el carácter / por el carácter _
SECURITY_KEYS=$(echo $SECURITY_KEYS | tr / _)

#Añadimos los security keys al archivo
sed -i "/@-/a $SECURITY_KEYS" /var/www/html/wordpress/wp-config.php

# Eliminamos el archivo index.html del /var/www/html
... (5 líneas restantes)
Contraer
message.txt
4 KB
# BEGIN WordPress
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
# END WordPress
<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        #ServerName www.example.com

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html

        <Directory "/var/www/html/">
          AllowOverride All
        </Directory>

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        # For most configuration files from conf-available/, which are
        # enabled or disabled at a global level, it is possible to
        # include a line for only one particular virtual host. For example the
        # following line enables the CGI configuration for this host only
        # after it has been globally disabled with "a2disconf".
        #Include conf-available/serve-cgi-bin.conf
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
#!/bin/bash
set -x

#VARIABLES
DB_NAME=wordpress_db
DB_USER=wordpress_user
DB_PASSWORD=wordpress_password
IP_PRIVADA_FRONTEND=
IP_PRIVADA_BACK=

#Actualizamos
apt update

#Instalamos MySQL Server
apt install mysql-server -y

#Creamos la base de datos para wordpress
mysql -u root <<< "DROP DATABASE IF EXISTS $DB_NAME;"
mysql -u root <<< "CREATE DATABASE $DB_NAME;"
mysql -u root <<< "CREATE USER $DB_USER@'$IP_PRIVADA_FRONTEND' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root <<< "GRANT ALL PRIVILEGES ON $DB_NAME.* TO $DB_USER@'$IP_PRIVADA_FRONTEND';"
mysql -u root <<< "FLUSH PRIVILEGES;"

# Modificamos el valor de bind-address para permitir conexiones remotas
sed -i "s/127.0.0.1/$IP_PRIVADA_BACK/" /etc/mysql/mysql.conf.d/mysqld.cnf

# Reiniciamos mysql
systemctl restart mysql
#!/bin/bash
set -x

#VARIABLES
DB_NAME=wordpress_db
DB_USER=wordpress_user
Expandir
message.txt
4 KB
﻿
#!/bin/bash
set -x

#VARIABLES
DB_NAME=wordpress_db
DB_USER=wordpress_user
DB_PASSWORD=wordpress_password
IP_PRIVADA_FRONTEND=
IP_PRIVADA_MYSQL_SERVER=
IP_PUBLICA_FRONTEND=

#Actualizamos
apt update

#Instalamos apache
apt install apache2 -y

#Instalamos los módulos PHP
apt install php libapache2-mod-php php-mysql -y

#Copiamos el archivo info.php a /var/www/html
cp /home/ubuntu/info.php /var/www/html

#Reiniciamos el servicio de Apache
systemctl restart apache2

#Añadimos la URL del Wordpress
cd /var/www/html
wget http://wordpress.org/latest.tar.gz

#Descomprimimos el .tar.gz
tar -xzvf latest.tar.gz

#Eliminamos el tar.gz
rm latest.tar.gz

#Configuramos  el archivo de configuración de Wordpress
cd /var/www/html/wordpress
mv wp-config-sample.php wp-config.php

sed -i "s/database_name_here/$DB_NAME/" wp-config.php
sed -i "s/username_here/$DB_USER/" wp-config.php
sed -i "s/password_here/$DB_PASSWORD/" wp-config.php
sed -i "s/localhost/$IP_PRIVADA_MYSQL_SERVER/" wp-config.php

#Habilitamos las variables WP_SITEURL y WP_HOME
sed -i "/DB_COLLATE/a define('WP_SITEURL', 'http://$IP_PUBLICA_FRONTEND/wordpress');" /var/www/html/wordpress/wp-config.php
sed -i "/WP_SITEURL/a define('WP_HOME', 'http://$IP_PUBLICA_FRONTEND');" /var/www/html/wordpress/wp-config.php

#Copiar el archivo wordpress /index.php a /var/www/html

cp /var/www/html/wordpress/index.php /var/www/html

#Editamos el archivo wordpress /index.php

sed -i "s#wp-blog-header.php#wordpress/wp-blog-header.php#" /var/www/html/index.php

#Habilitamos el módulo mod_rewrite de Apache

a2enmod rewrite

#Copiamos el archivo htaccess a /var/www/html
cd iaw-practica-8/FASE1
cp htaccess /var/www/html/.htaccess

#Copiamos el archivo de configuración de Apache
cd iaw-practica-8/FASE1
cp 000-default.conf /etc/apache2/sites-available/000-default.conf

#Reiniciamos Apache
systemctl restart apache2 

#Configuramos el archivo wp-config.php
sed -i "/AUTH_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/SECURE_AUTH_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/LOGGED_IN_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/NONCE_KEY/d" /var/www/html/wordpress/wp-config.php
sed -i "/AUTH_SALT/d" /var/www/html/wordpress/wp-config.php
sed -i "/SECURE_AUTH_SALT/d" /var/www/html/wordpress/wp-config.php
sed -i "/LOGGED_IN_SALT/d" /var/www/html/wordpress/wp-config.php
sed -i "/NONCE_SALT/d" /var/www/html/wordpress/wp-config.php

#Hacemos una llamada a la API de wordpress para obtener las security keys
SECURITY_KEYS=$(curl https://api.wordpress.org/secret-key/1.1/salt/)

#Reemplaza el carácter / por el carácter _
SECURITY_KEYS=$(echo $SECURITY_KEYS | tr / _)

#Añadimos los security keys al archivo
sed -i "/@-/a $SECURITY_KEYS" /var/www/html/wordpress/wp-config.php

# Eliminamos el archivo index.html del /var/www/html
rm -f /var/www/html/index.html

# Cambiamos el propietario y el grupo al directorio /var/www/html
chown www-data:www-data /var/www/html/ -R