# syntax = docker/dockerfile:1.4

# Build stage
FROM maven:3.8.4-openjdk-17-slim AS builder

# Set up working Directory
WORKDIR /app

# COPY pom.xml for dependecies
COPY pom.xml .

# Download dependencies- This layer will be cached unless pom.xml is modified
RUN mvn dependency:go-offline

# COPY source code
COPY src ./src 

# Build the application
RUN mvn clean package -DskipTests

# Runtime stage
FROM openjdk:17-alpine

WORKDIR /app

# copy the jar file form build stage
COPY --from=builder /app/target/*.jar app.jar

# Expose the port 
EXPOSE 8080

# Commnad to run the application
ENTRYPOINT [ "java" "-jar" "app.jar" ]