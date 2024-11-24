# Use a base image with OpenJDK
FROM openjdk:17-jdk-slim

# Copy the built JAR file into the container
COPY target/eureka-service-registry-0.0.1-SNAPSHOT.jar /app/eureka-service-registry-0.0.1-SNAPSHOT.jar

EXPOSE 8761

# Set the entrypoint to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/eureka-service-registry-0.0.1-SNAPSHOT.jar"]