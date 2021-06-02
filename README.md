# Práctica 8: Implantación de Wordpress en Amazon Web Services (AWS) sobre la pila LAMP

La arquitectura se forma por:
  - Un balanceador de carga , implementado con un Apache HTTP Server configurado como proxy inverso
  - Una capa de front-end , formada por dos servidores web con Apache HTTP Server
  - Una capa de back-end, formada por un servidor MySQL
 
Se necesitará las siguientes máquinas:
  - Balanceador
  - Front-end 1
  - Front-end 2
  - Servidor de Base de Datos MySQL

![Arquitectura](arquitectura.png)

## Fases de la práctica

  - Fase 00 -> Instalación de wordpress en un nivel ( Un servidor con todo lo necesario )
  - Fase 01 -> Instalación de wordpress en dos niveles ( Servidor Web y Servidor MySQL )
  - Fase 02 -> Instalación de wordpress en tres niveles ( Balanceador , 2 servidores Webs y Servidor MySQL )

## Tareas a realizar

### Balanceador de carga
- Instalar el software necesario
- Habilitar los módulos necesarios y configurar Apache HTTP Server como proxy inverso
### *Front-end* 
- Instalar el software necesario
- Descargar la última versión de Wordpress y descomprimir en el directorio apropiado
- Configurar Wordpress para que pueda conectar con MySQL
- Sincronizar el contenido estático en la capa *Front-end*
- Configuración de las Security Keys
### *Back-end*
- Instalar el software necesario
- Configurar MySQL para que acepte conexiones que no sean de localhost
- Crear una base de datos para Wordpress y asignarle permisos apropiados

