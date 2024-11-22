# FROM tomcat:9.0-jdk11
# COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war

# Stage 1: Build the application
FROM maven:3.8-jdk-8 AS builder

# Copy the application source code to the image
COPY . /usr/src/maven-web-application/

# Set the working directory
WORKDIR /usr/src/maven-web-application/

# Run Maven to build the project
RUN mvn -B package

# Stage 2: Create the runtime image
FROM openjdk:8-slim

# Copy the built WAR file from the builder stage
COPY --from=builder /usr/src/maven-web-application/target/maven-web-application.war /maven-web-application.war

# Specify the command to run the WAR file using embedded Tomcat or similar runtime
CMD ["java", "-jar", "/maven-web-application.war"]
