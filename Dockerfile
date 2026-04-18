# Imagen base
FROM node:18

# Crear carpeta dentro del contenedor
WORKDIR /app

# Copiar archivos
COPY package.json .
COPY app.js .

# Instalar dependencias (aunque no hay, es buena práctica)
RUN npm install

# Exponer puerto
EXPOSE 3000

# Comando para correr la app
CMD ["npm", "start"]