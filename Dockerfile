FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
Expose 8080
ADD target/spring-boot-aws-deploy-service.jar spring-boot-aws-deploy-service.jar
ENTRYPOINT ["java","-jar","/spring-boot-aws-deploy-service.jar"]
