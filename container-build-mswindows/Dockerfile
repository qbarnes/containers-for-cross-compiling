# x86_64 container for cross-compiling Microsoft Windows 32-bit
# and 64-bit binaries.

FROM docker.io/library/ubuntu:22.04

RUN apt-get update && \
	DEBIAN_FRONTEND="noninteractive" DEBCONF_NOWARNINGS="yes" \
	apt-get install -y git build-essential mingw-w64 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
