
FROM   openjdk:17-alpine
EXPOSE 8080
COPY   ~/app/target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java", "-jar", "/spring-boot-docker.jar"]