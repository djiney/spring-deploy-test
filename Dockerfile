FROM maven:3.6.3-jdk-11-openj9 AS MAVEN_BUILD
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package
FROM openjdk:11
WORKDIR /app
COPY --from=MAVEN_BUILD /build/target/docker-boot-intro-0.1.0.jar /app/
ENTRYPOINT ["java", "-jar", "docker-boot-intro-0.1.0.jar"]