# docker-systemd

[![Build Status](https://travis-ci.org/kevincoakley/docker-systemd.svg?branch=master)](https://travis-ci.org/kevincoakley/docker-systemd)

docker run --detach --privileged --name ubuntu16.04-systemd -v /sys/fs/cgroup:/sys/fs/cgroup -p 2222:22 kevincoakley/ubuntu16.04-systemd
docker run --detach --privileged --name centos7-systemd -v /sys/fs/cgroup:/sys/fs/cgroup -p 2222:22 kevincoakley/centos7-systemd
