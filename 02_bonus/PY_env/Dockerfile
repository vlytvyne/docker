FROM debian

MAINTAINER Vadym Lytvynets <vlytvyne@student.unit.ua>

RUN apt-get update && apt-get upgrade && apt-get install -y python3 python3-pip vim
RUN pip3 install numpy && pip3 install matplotlib && pip3 install Flask

COPY .vimrc /root/.vimrc