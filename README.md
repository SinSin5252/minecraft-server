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

> [!NOTE]
> Minecraft itself does not need to be installed on the computer running the server.
>

1. Clone the repository

2. Navigate to the repository

3. Create `.env` file

4. Insert those following variables:

```
MEMORY_MIN=1G
MEMORY_MAX=2G
MINECRAFT_SERVER_URL=https://launcher.mojang.com/v1/objects/0f3e7c5b8d6a2e4f9b1c5e3f8c9e2a1b2c3d4e5f/server.jar
EULA=True
```

### Run on Docker

Make sure Docker Desktop is running and that you are in the root directory of the project.

1. Start the Minecraft server with:

```
docker compose up -d --build
```

3. Check whether the container is running:

```
docker compose ps
```

4. To view the server logs:

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
| `MINECRAFT_SERVER_URL` | URL used to download the Minecraft server JAR | `https://launcher.mojang.com/v1/objects/0f3e7c5b8d6a2e4f9b1c5e3f8c9e2a1b2c3d4e5f/server.jar` |
| `EULA` | Specifies whether the Minecraft EULA has been accepted | `True` |

>[!CAUTION]
> Make sure that MEMORY_MAX does not exceed the amount of RAM available on the host system.

### Server Configuration

Different Minecraft server configurations can be defined using environment variables in the `.env` file.

Add the corresponding variables to your `docker-compose.yaml` and define their values in the `.env` file. 
For the current `docker-compose.yaml` a `.env` content example:

```
MAX_PLAYERS=15
DIFFICULTY=hard
GAMEMODE=survival
PVP=true
ONLINE_MODE=true
VIEW_DISTANCE=10
```

After changing the configuration, restart the server:

```
docker compose restart
```
