# Solución

La solución consta de este repositorio principal, que contiene un esquema completo para arrancar los servicios y aplicaciones del desafio.

La aplicacion "api" (Java calculadora de edad) y "desafio-php" (consumidora) son submodulos git de este repositorio.

El API se implementó con un recurso "persona" que debe consumirse como JSON, a su vez retorna respuesta en JSON.

Se escogió como base de datos CouchDB, operable también por REST y JSON.

Para la aplicación "desafio-php" consumidora, se escogio utilizar la combinación: PHP7 / Bootstrap / jQuery.

En frente de las aplicacion web está un contenedor nginx haciendo de proxy reverso. Ajustado para recibir peticiones de los siguientes HOSTS:

api.desafio.gon
app.desafio.gon
couchdb.desafio.gon

Agregar estos hosts apuntando a la IP correspondiente en la máquina de pruebas.

# Instalación

Previamente se asume instalado docker y docker-compose.

Usando el snapshot o clonando este repositorio (usar las llaves de deploy y configuracion):

```
git clone --recursive https://github.com/sir-gon/desafio-docker.git
cd desafio-docker
docker-compose build
docker-compose up
```

# Ver

Los submódulos de esta solución:

* Webapp PHP7 + jQuery + Bootstrap [desafio-webapp](https://github.com/sir-gon/desafio-webapp)
* API REST/JSON en Java (Jersey) [desafio-api](https://github.com/sir-gon/desafio-api)


# Referencias

[How to Dockerize Java RESTful API Application
](https://medium.com/dekses/how-to-dockerize-java-restful-api-application-7aed70ef3c3a#.t0t9ch9la)

[Run a cron job with Docker Julien Boulay](https://www.ekito.fr/people/run-a-cron-job-with-docker/)
