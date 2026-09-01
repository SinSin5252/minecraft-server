# Minecraft-Server

## Repository Description

A Docker-based Minecraft server setup with persistent data storage and easy configuration using Docker Compose.

## Table of Content

- [Quickstart](#quickstart)
    - [Prerequisities](#prerequisities)
    - [Run on Docker](#run-on-docker)

- [Usage](#usage)
    - [Enviroment Variables](#enviroment-variables)
    - [Server Configuration](#server-configuration)

## Quickstart

In order to quickly get started with the project follow these steps:

### Prerequisities

- [Docker](https://www.docker.com/products/docker-desktop)

> [!INFO]
> Minecraft itself does not need to be installed on the computer running the server.
>

1. Clone the repository

2. Navigate to the repository

3. Create `.env` file

4. Insert those following variables:

```
MEMORY_MIN=1G
MEMORY_MAX=2G
```

5. Create a folder named `minecraft` 

6. Download the minecraft server file from https://www.minecraft.net/de-de/download/server in to the `minecraft` folder. The file can be downloaded with the following command:

```
cd minecraft
wget https://piston-data.mojang.com/v1/objects/823e2250d24b3ddac457a60c92a6a941943fcd6a/server.jar 
```

### Run on Docker

Make sure Docker Desktop is running and that you are in the root directory of the project.

1. Start the Minecraft server with:

```
docker compose up -d
```

2. Accept EULA agreement with changing the value of `eula` to `true` in the `eula.txt` file, which is in `minecraft` folder.

```
eula=true
```

3. Restart the container 

```
docker compose restart
```


4. Check whether the container is running:

```
docker compose ps
```

5. To view the server logs:

```
docker compose logs
```

Once the server has successfully started, Minecraft Java Edition clients can connect to the server.

>[!NOTE]
>The server can be tested with `mcstatus` script from https://github.com/py-mine/mcstatus

## Usage

In this section you can read about the project a bit more in detail.

### Enviroment Variables

The server can be configured using the `.env` file.

| Variable | Description | Example |
|---|---|---|
| `MEMORY_MIN` | Minimum amount of RAM allocated to the server | `1G` |
| `MEMORY_MAX` | Maximum amount of RAM allocated to the server | `2G` |

>[!CAUTION]
> Make sure that MEMORY_MAX does not exceed the amount of RAM available on the host system.

### Server Configuration

After the first server startup, additional configuration files will be created inside the minecraft directory.

The main server configuration can be found in `minecraft/server.properties`

For example, the following settings can be configured:

```
motd=My Minecraft Server
gamemode=survival
difficulty=easy
max-players=10
```

After changing the configuration, restart the server:

```
docker compose restart
```
