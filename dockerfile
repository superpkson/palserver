FROM steamcmd/steamcmd:latest

EXPOSE 8211/udp
VOLUME [ "/home/ubuntu/steamapps/common/PalServer/Pal/Saved/SaveGames/0/" ]

RUN steamcmd @sSteamCmdForcePlatformType linux +force_install_dir /home/ubuntu +login anonymous +app_update 2394010 +quit

USER ubuntu
WORKDIR /home/ubuntu/steamapps/common/PalServer
ENTRYPOINT [ "./PalServer.sh" ]