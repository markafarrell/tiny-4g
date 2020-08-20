FROM rust:1.40 as builder
WORKDIR /usr/src/myapp
RUN git clone https://github.com/markafarrell/gtp-tunnel.git
RUN cargo install --path gtp-tunnel

FROM ubuntu:latest

COPY etc-apt-sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y net-tools iproute2 inetutils-ping tcpdump iptables

RUN apt-get -y install curl

COPY --from=builder /usr/local/cargo/bin/gtp-tunnel /usr/local/bin/gtp-tunnel

COPY start.sh /usr/bin/start.sh