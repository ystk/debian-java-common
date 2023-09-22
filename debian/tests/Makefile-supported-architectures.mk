#!/usr/bin/make -f

include /usr/share/java/java_defaults.mk

ELTS_ARCHS_JESSIE=amd64 armel armhf i386

# this is how libreoffice assess if the building architecture has Java support
# LO's debian/rules compares DEB_HOST_ARCH against the list that comes from
# java_architectures.

ELTS_JAVA_ARCHS = $(filter $(ELTS_ARCHS_JESSIE),$(java_architectures))
all:
	echo "$(ELTS_JAVA_ARCHS)" | grep "$(ELTS_ARCHS_JESSIE)"
