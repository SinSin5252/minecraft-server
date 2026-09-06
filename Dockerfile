FROM eclipse-temurin:25-jre-alpine

WORKDIR /minecraft

COPY entrypoint.sh /minecraft/entrypoint.sh

ENV MINECRAFT_SERVER_URL=https://piston-data.mojang.com/v1/objects/823e2250d24b3ddac457a60c92a6a941943fcd6a/server.jar

RUN apk add --no-cache wget && chmod +x entrypoint.sh

EXPOSE 25565

ENTRYPOINT ["/bin/sh", "-c", "./entrypoint.sh"]