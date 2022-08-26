#DreamCloud Dockerfile ruby-git szerver
#SUDO              2022            SERVERHU.EU
FROM debian:11
VOLUME ["/data"]
WORKDIR /data
ENV TZ=Europe/Budapest
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y && \
    apt install git wget ruby ruby-dev -y && \
    cd /root && \
    git clone https://github.com/ItsMeSudo/DreamcloudDocker-Ruby.git && \
    cd DreamcloudDocker-Ruby && chmod +x * && \
    ./setup.sh

CMD container-start; sleep infinity