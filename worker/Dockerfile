FROM maven:3.6.3-jdk-11-slim AS build
WORKDIR /code
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

FROM openjdk:11-jre-slim
COPY --from=build /code/target/worker-jar-with-dependencies.jar /app/worker.jar
CMD ["java", "-jar", "/app/worker.jar"]