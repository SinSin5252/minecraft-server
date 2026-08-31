FROM eclipse-temurin:25-jre-alpine

WORKDIR /minecraft

EXPOSE 25565

ENTRYPOINT ["/bin/sh", "-c", "java -Xmx4G -Xms4G -jar server.jar nogui"]