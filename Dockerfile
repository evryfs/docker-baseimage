FROM ubuntu:bionic
LABEL maintainer "David J. M. Karlsen"
#avoid interactive dialouges from apt:
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
	apt-get -y install curl wget vim tcpdump nmap iproute2 tar gzip bzip2 && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
