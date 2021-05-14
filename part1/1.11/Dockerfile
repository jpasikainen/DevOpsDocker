FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY /material-applications/spring-example-project .
RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
