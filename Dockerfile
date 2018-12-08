FROM ubuntu:bionic
LABEL maintainer "David J. M. Karlsen"
#avoid interactive dialouges from apt:
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
	apt-get -y install curl wget vim tcpdump iputils-ping nmap netcat iproute2 net-tools tar gzip bzip2 unzip && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
