# x86_64 container for cross-compiling Microsoft Windows 32-bit
# and 64-bit binaries with the added regex library.
#
# This OCI container is based on Fedora due to the added packages
# mingw{32,64}-libgnurx{,-static} which have no equivalent under
# Debian or Ubuntu.

FROM quay.io/fedora/fedora:40

RUN dnf -y update && \
	dnf -y install \
		git \
		@c-development \
		perl-IO-Compress \
		groff-base \
		groff-perl \
		util-linux \
		mingw{32,64}-gcc{,-c++} mingw{32,64}-binutils \
		mingw{32,64}-libgnurx{,-static} && \
	dnf clean all && \
	rm -rf /var/cache/dnf && \
	rm -rf /usr/share/doc /usr/share/info /usr/share/man && \
	rm -rf /tmp/* /var/tmp/*
