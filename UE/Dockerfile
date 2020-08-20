FROM ubuntu:latest

COPY etc-apt-sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y net-tools iproute2 inetutils-ping tcpdump

RUN apt-get -y install curl netcat ethtool nload

COPY start.sh /usr/bin/start.sh