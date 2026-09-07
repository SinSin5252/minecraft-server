#!/bin/sh

wget ${MINECRAFT_SERVER_URL} -O server.jar

java -Xmx${MEMORY_MAX} -Xms${MEMORY_MIN} -jar server.jar nogui


EULA=$(echo "${EULA}" | tr '[:upper:]' '[:lower:]')
echo "eula=${EULA}" > /minecraft/eula.txt
if [ "${EULA}" != "true" ]; then
    echo "Set the EULA to true to accept the agreement of the Minecraft EULA."
    exit 1
fi


cat > /minecraft/server.properties <<EOF
server-port=25565
max-players=${MAX_PLAYERS}
difficulty=${DIFFICULTY}
gamemode=${GAMEMODE}
pvp=${PVP}
online-mode=${ONLINE_MODE}
view-distance=${VIEW_DISTANCE}
EOF