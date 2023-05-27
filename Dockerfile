FROM openjdk:13
RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/3.7.5/Lavalink.jar
WORKDIR /opt/Lavalink

COPY Lavalink.jar Lavalink.jar
COPY application.yml application.yml

EXPOSE 9025

CMD ["java", "-jar", "Lavalink.jar"]
