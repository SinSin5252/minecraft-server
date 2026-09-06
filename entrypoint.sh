#!/bin/sh

wget ${MINECRAFT_SERVER_URL} -O server.jar

java -Xmx${MEMORY_MAX} -Xms${MEMORY_MIN} -jar server.jar nogui

if [ "$EULA" = "True" ] || [ "$EULA" = "TRUE" ] || [ "$EULA" = "true" ]; then
    echo "eula=true" > /minecraft/eula.txt
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