# primera imagen de docker

# imagen base
FROM ubuntu

# RUN para correr comando dentro de la imagen
RUN apt-get update

RUN apt-get install python3 python3-dev -y

RUN mkdir /app

#define el directorio de trabajo
WORKDIR /app

#VARIABLES DE ENTORNO
ENV MSG="Hola mundo"

#copiar archivos
ADD . .

#ejecutar comandos dentro del contenedor
CMD python3 -m http.server 5000

#Exponer puertos para que se pueda acceder desde la pc
EXPOSE 5000