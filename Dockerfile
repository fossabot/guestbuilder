FROM debian:buster
RUN useradd -ms /bin/bash builduser
RUN apt update && apt install -y wget libguestfs-tools
USER builduser
WORKDIR /home/builduser