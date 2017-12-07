FROM openjdk:8-jdk-alpine
VOLUME /tmp

#RUN apt-get install -y gradle

#COPY . /tmp
#WORKDIR /tmp

#RUN gradle build

#CMD java -jar build/libs/gs-spring-boot-docker-0.1.0.jar

ADD build/libs/gs-spring-boot-docker-0.1.0.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar