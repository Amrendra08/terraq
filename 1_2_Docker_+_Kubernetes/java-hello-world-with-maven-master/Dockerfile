FROM maven AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY . .
RUN mvn package

FROM openjdk:11
WORKDIR /app
COPY --from=build /app/target/*.jar .
CMD ["java", "-jar","*.jar"]
