FROM ubuntu:bionic
LABEL maintainer "David J.  M. Karlsen"
RUN apt-get update && \
	apt-get -y install curl wget vim tcpdump && \
	apt-get -y clean && \
	rm -rf /var/cache/apt
