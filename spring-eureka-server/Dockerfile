FROM maven:3.6.3-openjdk-11 as build
WORKDIR /app

COPY pom.xml /app
RUN mvn --quiet dependency:go-offline
COPY src /app/src
RUN mvn package

FROM openjdk:11.0.9.1-jre
COPY --from=build /app/target/*.jar /app/

EXPOSE 8761
CMD ["java","-jar","/app/spring-eureka-server-1.0.0.jar"]



 
