FROM golang:1.10

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y install vim apt-utils less
RUN apt-get -y install automake bison flex g++ git libboost-all-dev libevent-dev libssl-dev libtool make pkg-config

WORKDIR /app
