FROM ubuntu:latest

COPY etc-apt-sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y net-tools iproute2 inetutils-ping tcpdump 

RUN apt-get -y install nginx curl netcat ethtool

RUN dd if=/dev/urandom of=/var/www/html/100MB.file bs=1048576 count=100

COPY start.sh /usr/bin/start.sh