# Vamos a instalar una version de node
# FROM imagen : version 
FROM node:14

# El codigo ira a una carpeta en local
# Creamos la carpeta con el comando RUN el cual ejecuta comandos LINUX
# Nos movemos a la carpeta creada con WORKDIR
RUN mkdir -p /usr/src/app-docker-node-mongo

WORKDIR /usr/src/app-docker-node-mongo

# Copiamos los paquetes de configuración con las dependencias para 
# descargarlas en el directorio actual "./"
COPY package*.json ./

# Descargamos las dependecias en el contenedor actual
RUN npm install

# Copiamos el codigo en el directorio actual, copia el directorio 
# actual en el contenedor actual
COPY . .

# Vamos a abrir el puerto
EXPOSE 3000

# Arranca el servidor
CMD ["npm", "run", "dev"]