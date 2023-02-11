# x86_64 container for cross-compiling ARM aarch64 binaries.
#
# Binaries have been tested on Raspberry Pi OS based on Debian 11.
#
# Older ubuntu-20.04 needed for cross packages compatible with
# Raspberry Pi OS based on Debian 11.

FROM docker.io/library/ubuntu:20.04

RUN apt-get update && \
	DEBIAN_FRONTEND="noninteractive" DEBCONF_NOWARNINGS="yes" \
	apt-get install -y git build-essential gcc-aarch64-linux-gnu && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
