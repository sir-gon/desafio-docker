# fetch basic image
FROM maven:3.3.9-jdk-8-alpine

# application placed into /opt/app
#RUN mkdir -p /opt/app
WORKDIR /opt/app/

# selectively add the POM file and
# install dependencies
#COPY api/pom.xml /opt/app/
#RUN mvn install

# rest of the project
#COPY api/src /opt/app/src
#RUN mvn package

# local application port
EXPOSE 8080

# execute it
CMD ["mvn", "package", "exec:java"]
#CMD ["java","-jar","/opt/app/target/jersey-docker-desafio-1.0-SNAPSHOT.jar"]
