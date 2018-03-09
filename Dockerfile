FROM golang:1.10

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y install vim
    

