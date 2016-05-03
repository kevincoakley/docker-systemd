FROM ubuntu:16.04
MAINTAINER Kevin Coakley <kcoakley@sdsc.edu>

ENV container docker

# Don't start any optional services except for the few we need.
RUN find /etc/systemd/system \
         /lib/systemd/system \
         -path '*.wants/*' \
         -not -name '*journald*' \
         -not -name '*systemd-tmpfiles*' \
         -not -name '*systemd-user-sessions*' \
         -exec rm \{} \;

RUN systemctl set-default multi-user.target

RUN apt-get update; apt-get -y install python openssh-server openssh-client; apt-get clean
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo 'root:docker' | chpasswd
RUN systemctl enable ssh.service

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/run"]

EXPOSE 22

CMD ["/sbin/init"]
