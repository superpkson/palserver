FROM steamcmd/steamcmd:latest

RUN steamcmd @sSteamCmdForcePlatformType linux +login anonymous +app_update 2394010 +quit

WORKDIR /home/ubuntu/steamapps/common/PalServer
ENTRYPOINT [ "PalServer.sh" ]