FROM docker.io/library/maven:3.9.1-ibmjava-8 as build
WORKDIR /app
COPY . .
RUN mvn clean package


FROM docker.io/library/tomcat:8.0.20-jre8
COPY --from=build /app/target/*.war  /usr/local/tomcat/webapps/
