

PARA EN LOCAL
docker image build -t facturas:v0.1 . 
docker run -it -p 4010:4010 --name servicioFacturas facturas:v0.1 

ONLINE
docker pull mwan93/aos_servicio_facturas:v0.2
docker run -it -p 4010:4010 --name servicioFacturas mwan93/aos_servicio_facturas:v0.2


https://hub.docker.com/r/mwan93/aos_servicio_facturas 