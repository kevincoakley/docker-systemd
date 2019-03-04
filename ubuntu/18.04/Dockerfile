FROM ubuntu:bionic-20190204
MAINTAINER Kevin Coakley <kcoakley@sdsc.edu>

ENV container docker

RUN apt-get update && apt-get install -y \
    systemd \
    python \
    openssh-server \
    openssh-client \
    apt-utils \
    sudo \
 && rm -rf /var/lib/apt/lists/*

RUN systemctl set-default multi-user.target

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo 'root:docker' | chpasswd
RUN systemctl enable ssh.service

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/run"]

EXPOSE 22

CMD ["/sbin/init"]
