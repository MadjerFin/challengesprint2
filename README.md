# Hello Docker (Spring Boot)
Aplicação Java 17 + Spring Boot 3 minimalista para demonstrar Dockerfile e docker-compose.

## Rodar com Docker
```bash
docker compose build
docker compose up -d
```
Acesse `http://localhost:8080` ou `http://IP_DA_VM:8080`.

## Publicar no Docker Hub
```bash
docker build -t hello-docker:1.0 .
docker tag hello-docker:1.0 SEU_USUARIO/hello-docker:1.0
docker login
docker push SEU_USUARIO/hello-docker:1.0
```
