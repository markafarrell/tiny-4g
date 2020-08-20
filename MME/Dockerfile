FROM ubuntu:latest

COPY etc-apt-sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y net-tools iproute2 inetutils-ping tcpdump
