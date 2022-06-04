# Infraestructura y despliegue | Práctica 2 - AOS
##  Despliegue de la imagen de contenedor del servicio - Subsistema 5
- Servicio especificado en la práctica 1, llamado **"Subsistema 5: Gestión de facturas a los clientes por los trabajos realizados"** que se encuentra en el siguiente repositorio https://github.com/SoniaZhang9/AOS_Subsistema_5 <br>

- Se ha decidido crear un servidor MOCK para dicho servicio, apoyándonos de una imagen base de stoplight/prism. Se puede encontrar más detalles en [Dockerfile](Dockerfile)

- La imagen se encuentra publicada en <br>
🐳 https://hub.docker.com/r/mwan93/aos_servicio_facturas/tags 🐳 <br>
La versión última v0.2 es la versión funcional 

### Intrucciones de uso:
Descargar con 
```
docker pull mwan93/aos_servicio_facturas:v0.2
``` 
Creación de un contenedor con 
```
docker run -it -p 4010:4010 --name servicioFacturas mwan93/aos_servicio_facturas:v0.2
```

- En caso de querer construir la imagen localmente, habría que descargar el contenido de este repositorio, situarse sobre la raíz y escribir lo siguiente:<br> 
```
docker image build -t facturas:v0.2 .
```

```
docker run -it -p 4010:4010 --name servicioFacturas facturas:v0.2
```

