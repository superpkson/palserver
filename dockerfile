FROM steamcmd/steamcmd:latest

EXPOSE 8211/udp
VOLUME [ "/home/ubuntu/Pal/Saved/SaveGames/0/" ]

RUN chown -R ubuntu:ubuntu /root/.local/share/Steam/steamcmd/steamcmd.sh
USER ubuntu
RUN steamcmd +force_install_dir "/home/ubuntu" @sSteamCmdForcePlatformType linux +login anonymous +app_update 2394010 +quit

WORKDIR /home/ubuntu
ENTRYPOINT [ "./PalServer.sh" ]