FROM openjdk:8-jdk-alpine
MAINTAINER com.example.demo
ADD target/sprintboot-helloworld-0.0.1-SNAPSHOT.jar  AWSDockerDeploy-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","AWSDockerDeploy-0.0.1-SNAPSHOT.jar"]
