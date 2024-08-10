# Documentacion sobre alpine linux, sus versiones y casos de usos:
# Informacion sobre la imagen de docker de alpine linux: https://hub.docker.com/_/alpine/
# Informacion sobre Alpine Linux: https://wiki.alpinelinux.org/wiki/Main_Page

# Usa Alpine Linux como base, pueden elegir cualquier distribucion de linux en su lugar. 
FROM alpine:3.20

# Informacion sobre los comandos disponibles en alpine linux:
# https://wiki.alpinelinux.org/wiki/Alpine_Package_Keeper

# El comando de alpine: apk add, instala los paquetes necesarios para compilar C++
# --no-cache: Indica que no debe almacenar en caché el índice de paquetes para reducir el tamaño de la imagen
RUN apk add --no-cache build-base libstdc++ linux-headers musl-dev libgcc g++ libgomp

# Copia todos los archivos del directorio actual al contenedor
COPY . .

# Compila main.cpp en un ejecutable llamado 'code'
# Para utilizar paralelizacion debes completar el comando de abajo, si usas openmp utiliza una flag "-fopenmp" y si utilizas pthreads: "-pthread"
RUN g++ -o code main.cpp

# Define el comando por defecto que ejecuta el programa compilado
CMD ["./code"]

# Nota:
# La version de alpine linux utilizada tiene soporte hasta abril de 2026
