# Use uma imagem base do OpenJDK
FROM openjdk:17-jdk-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo JAR do build para o diretório de trabalho
COPY target/*.jar app.jar

# Expõe a porta padrão da aplicação Spring Boot (8080)
EXPOSE 8080

# Comando para executar o JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
