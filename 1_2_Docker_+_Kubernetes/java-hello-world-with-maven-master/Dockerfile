FROM maven AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY . .
RUN mvn package

FROM openjdk:11
WORKDIR /app
COPY --from=build /app/target/jb-hello-world-maven-0.2.0.jar .
CMD ["java", "-jar","jb-hello-world-maven-0.2.0.jar"]
