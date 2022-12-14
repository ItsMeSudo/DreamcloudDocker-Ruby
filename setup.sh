#!/bin/bash
#SUDO                 2022              SERVERHU.EU

cd /root && \
    apt install unzip wget git curl ruby ruby-dev libmagickwand-dev gcc g++ make -y && \ 
    cd /root/DreamcloudDocker-Ruby && \
    mkdir -p /tmp/sudo && \
    gem install bundler --no-force && \
    gem install discordrb && \
    gem install dotenv && \
    gem install ruby_figlet --no-document && \
    sed -i 's/\r//' /root/DreamcloudDocker-Ruby/container-start && \
    sed -i 's/\r//' /root/DreamcloudDocker-Ruby/gitclone && \
    sed -i 's/\r//' /root/DreamcloudDocker-Ruby/setservertoken && \
    mv /root/DreamcloudDocker-Ruby/container-start /usr/bin/ && \
    mv /root/DreamcloudDocker-Ruby/gitclone /usr/bin/ && \
    mv /root/DreamcloudDocker-Ruby/setservertoken /usr/bin/