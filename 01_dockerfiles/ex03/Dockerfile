FROM ubuntu

MAINTAINER Vadym Lytvynets <vlytvyne@student.unit.ua>

EXPOSE 443 80 22

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates openssh-server curl postfix

RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && bash script.deb.sh && apt-get install -y gitlab-ce

RUN apt update && apt install -y tzdata && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure

# docker build -t gitlab .
# docker run -d -p 8080:80 -p 8022:22 -p 8443:443 gitlab