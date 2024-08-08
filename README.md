# Uso de la imagen

## Dependencias
- Docker

## Notas adicionales
Con esta imagen de Docker se puede correr cualquier programa para el curso de ___Microprocesadores___. Actualmente esta configurado para ejecutar openmp por medio de un programa llamado *main.cpp*. Si necesario cambiar o agregar mas flags, puedes hacerlo modificando la linea del ___Dockerfile___ donde esta el siguiente codigo:

> RUN g++ -o code main.cpp -fopenmp

## Comandos
```sh
docker buildx build -t gcc .
docker run gcc



