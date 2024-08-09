# Descripción

## Dependencias
- Docker

## Comandos
- Para construir la imagen, necesario re construir cada vez que haces un cambio y necesitas probar el codigo: 
```sh
docker buildx build -t gcc .
```
- Para ejecutar el codigo:
```sh
docker run gcc
```
## Notas adicionales
Con esta imagen de Docker se puede ejecutar cualquier programa para el curso de __Microprocesadores__. Actualmente esta configurado para ejecutar openmp por medio de un programa llamado *main.cpp*. Si necesario cambiar o agregar mas flags, puedes hacerlo modificando la linea del __Dockerfile__ donde esta el siguiente codigo:
> RUN g++ -o code main.cpp 
---
__Ten en cuenta eliminar las imagenes y contenedores de Docker una vez dejes de utilizarlo.__
