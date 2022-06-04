# Infraestructura y despliegue | Práctica 2 - AOS
##  Despliegue de la imagen de contenedor del servicio - Subsistema 5
- Servicio especificado en la práctica 1, llamado **"Subsistema 5: Gestión de facturas a los clientes por los trabajos realizados"** que se encuentra en el siguiente repositorio https://github.com/SoniaZhang9/AOS_Subsistema_5 <br>

- Se ha decidido crear un servidor MOCK para dicho servicio, apoyándonos de una imagen base de stoplight/prism. Se puede encontrar más detalles en [Dockerfile](Dockerfile)

- La imagen se encuentra publicada en <br>
https://hub.docker.com/r/mwan93/aos_servicio_facturas/tags <br>
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

- En caso de querer construir la imagen y levantar un contenedor localmente, habría que descargar el contenido de este repositorio, situarse sobre la raíz y escribir lo siguiente:<br> 
```
docker image build -t facturas:v0.2 .
```

```
docker run -it -p 4010:4010 --name servicioFacturas facturas:v0.2
```

## Despliegue de todos los servicios con Docker Compose

Después de estudiar los servicios publicados por el resto de compañerps, éstas son las decisiones de infraestructura tomadas para el fichero `docker-compose.yml`

- **Servicio 1 - Gestión de clientes**  `http://localhost:8001` <br>
No tienen la imagen del servicio publicado en Docker hub. <br> 
Después se ha intentado la contrucción de su imagen de forma local, pero ha dado fallos de construcción.<br>
  Ante estos problemas se ha decidido simular el comportamiento del servicio usando spotlight/prism para el servidor y swagger-ui para el front-end.<br>
- Servicio 2 - Gestión de vehículos
- **Servicio 3 - Gestión de trabajos**   `http://localhost:8003` <br>
  No tienen la imagen del servicio publicado en Docker hub. <br> Después se ha intentado seguir las instrucciones de contrucción de su imagen de forma local, como lo tienen documentado en su Readme.md, pero ha dado fallos de construcción.<br>
  Ante estos problemas se ha decidido simular el comportamiento del servicio usando spotlight/prism para el servidor y swagger-ui para el front-end.<br>
- Servicio 4 - Envío de notificaciones
- **Servicio 5 - Gestión de facturas** `http://localhost:8005` <br>
Se ha usado la propia imagen creada para el despliegue del servidor y para el front-end se ha usado swagger-ui.
- Servicio 6 - Gestión de recambios
- Servicio 7 - Gestión de logs
