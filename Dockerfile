# ===== Stage 1: Build =====
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -q -DskipTests dependency:go-offline
COPY src ./src
# gera o JAR bootável (com MANIFEST correto)
RUN mvn -q -DskipTests clean package spring-boot:repackage

# ===== Stage 2: Runtime =====
FROM eclipse-temurin:17-jre-alpine
RUN addgroup -S app && adduser -S app -G app
USER app
WORKDIR /app

# copie o jar gerado (ajuste o nome se seu artifact/version forem outros)
COPY --from=build /app/target/hello-docker-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
