FROM ubuntu:bionic-20190612
LABEL maintainer "David J. M. Karlsen"
#avoid interactive dialouges from apt:
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8
RUN apt-get update && \
	apt-get -y install curl wget vim tcpdump dnsutils iputils-ping nmap netcat iproute2 net-tools tar gzip bzip2 unzip tzdata lsof psmisc less && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
