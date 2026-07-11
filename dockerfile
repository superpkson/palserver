FROM steamcmd/steamcmd:latest

EXPOSE 8211/udp
VOLUME [ "/home/ubuntu/Pal/Saved/SaveGames/0/" ]

RUN chown -R ubuntu:ubuntu /root/.local/share/Steam/steamcmd/steamcmd.sh
RUN steamcmd +force_install_dir "/home/ubuntu" @sSteamCmdForcePlatformType linux +login anonymous +app_update 2394010 +quit
RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
WORKDIR /home/ubuntu
ENTRYPOINT [ "./PalServer.sh" ]