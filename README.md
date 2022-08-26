# SUDO | DreamcloudDocker-Ruby

#

Docker image telepítése:

docker pull zud0/dreamclouddocker-ruby:latest
#

Konténer létrehozása:

docker container create --name dcr -v /home/USER/Projektek/dreamcloudruby:/data zud0/dreamclouddocker-ruby:latest 
#

Működő példa a teszteléshez:

docker exec -it dcr /bin/bash gitclone https://github.com/ItsMeSudo/DreamCloud-RubyTemplate.git

docker exec -it dcr /bin/bash setservertoken TOKEN(Discord token megadása nélkül nem fog helyesen elindulni)
#

Konténer elindítása:
docker container start dcr

Output megnézése:
docker logs dcr -f
#
Debug:
docker exec -it dcr /bin/bash
