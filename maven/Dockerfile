# fetch basic image
FROM maven:3.6.1-jdk-8-alpine

# application placed into /opt/app
WORKDIR /opt/app/

# local application port
EXPOSE 8080

# execute it
CMD ["mvn", "package", "exec:java"]