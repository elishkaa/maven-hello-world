FROM openjdk:8-jre-alpine3.9
# copy only the artifacts we need from the first stage and discard the rest
COPY /my-app/target/my-app-1.0.0.jar my-app-1.0.0.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "my-app-1.0.0.jar"]

