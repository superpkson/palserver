FROM steamcmd/steamcmd:latest

EXPOSE 8211/udp
VOLUME [ "/home/ubuntu/steamapps/common/PalServer/Pal/Saved/SaveGames/0/" ]

RUN chown -R ubuntu:ubuntu /root/.local/share/Steam/steamcmd/steamcmd.sh
RUN su - ubuntu
RUN steamcmd @sSteamCmdForcePlatformType linux +force_install_dir /home/ubuntu +login anonymous +app_update 2394010 +quit

WORKDIR /home/ubuntu/steamapps/common/PalServer
ENTRYPOINT [ "./PalServer.sh" ]