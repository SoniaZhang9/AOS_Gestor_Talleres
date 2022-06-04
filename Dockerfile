FROM stoplight/prism:4

#Copia el contenido de ./OpenApi a /aos del contenedor
RUN mkdir /aos
COPY ./OpenApi /aos

EXPOSE 4010

CMD ["mock", "--cors" , "-h" , "'0.0.0.0'" , "/aos/openapi.yaml"]