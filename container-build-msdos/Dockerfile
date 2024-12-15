# x86_64 container for cross-compiling MS-DOS binaries.

FROM docker.io/library/ubuntu:22.04

RUN apt-get update && \
	DEBIAN_FRONTEND="noninteractive" DEBCONF_NOWARNINGS="yes" \
	apt-get install -y \
		git \
		curl \
		build-essential \
		groff-base \
		groff \
		bsdmainutils \
		mingw-w64 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	curl -fSsLO https://github.com/andrewwutw/build-djgpp/releases/download/v3.1/djgpp-linux64-gcc1020.tar.bz2 && \
	tar -xf djgpp-linux64-gcc1020.tar.bz2 && \
	rm -f djgpp-linux64-gcc1020.tar.bz2 && \
	for i in /djgpp/bin/*;do ln -s "$i" /usr/bin; done
