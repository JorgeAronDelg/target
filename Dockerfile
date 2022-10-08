#Espesificamos el JDK
FROM openjdk:8-jdk-alpine
#Indicamos de que pagina se descargara
MAINTAINER baeldung.com
#Direccion del .war
COPY target/backend-Spring-0.0.1-SNAPSHOT.war service.war
#Etiqueta para ejecutar un comando
ENTRYPOINT ["java", "-jar", "/service.war"]