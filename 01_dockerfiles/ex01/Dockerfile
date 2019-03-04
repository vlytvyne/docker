FROM debian

MAINTAINER Vadym Lytvynets <vlytvyne@student.unit.ua>

EXPOSE 9987/udp 10011 30033
ENV TS3SERVER_LICENSE accept

RUN apt-get update && apt-get install -y wget bzip2
WORKDIR /teamspeak
RUN wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && tar -xvf teamspeak3-server_linux_amd64-3.6.1.tar.bz2
WORKDIR ./teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh

# docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ts
