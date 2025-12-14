# Utilise une image Java 17 compatible ARM64 (ta VM est ARM)
FROM eclipse-temurin:17-jdk

# Répertoire de travail
WORKDIR /app

# Copie le JAR généré par Maven
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Port de ton app Spring Boot
EXPOSE 8089

# Lancement de l'app
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
