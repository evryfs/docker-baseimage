FROM ubuntu:focal-20210416@sha256:cf31af331f38d1d7158470e095b132acd126a7180a54f263d386da88eb681d93
LABEL maintainer "fsdevops@evry.com"
#avoid interactive dialouges from apt:
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8
RUN apt-get update && \
	apt-get --no-install-recommends -y install curl ca-certificates wget vim dnsutils iputils-ping netcat iproute2 net-tools tar gzip bzip2 unzip tzdata lsof psmisc less && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
