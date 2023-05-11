FROM docker.io/library/tomcat:8.0.20-jre8
COPY target/*.war  /usr/local/tomcat/webapps/
