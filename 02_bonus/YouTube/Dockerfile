FROM debian

MAINTAINER Vadym Lytvynets <vlytvyne@student.unit.ua>

RUN apt-get update && apt-get install -y wget pv
COPY vt100 /videos
COPY playlist /bin/playlist
COPY play /bin/play

CMD chmod 777 /bin/play /bin/playlist

ENTRYPOINT rbash