FROM eclipse-temurin:25-jre-alpine

WORKDIR /minecraft

EXPOSE 25565

ENTRYPOINT ["/bin/sh", "-c", "java -Xmx${MEMORY_MAX} -Xms${MEMORY_MIN} -jar server.jar nogui"]