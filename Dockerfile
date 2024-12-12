FROM openjdk:17-jdk-alpine

EXPOSE 8082

# Update system and install curl
RUN apk update && \
    apk add --no-cache curl

# Download the JAR file
RUN curl -u admin:Ala-123456789 -o timesheet.jar "http://192.168.159.128:8081/repository/maven-releases/tn/esprit/eventsProject/1.0.0/eventsProject-1.0.0.jar"

# Set entrypoint
ENTRYPOINT ["java", "-jar", "timesheet.jar"]