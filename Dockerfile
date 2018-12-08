FROM ubuntu:bionic
LABEL maintainer "David J.  M. Karlsen"
RUN apt -y install curl wget vim tcpdump && \
	apt -y clean && \
	rm -rf /var/lib/apt/cache
