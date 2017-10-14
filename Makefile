# top-level makefile for rpi-arcade

# much of this file is just enabling the out-of-tree build for Buildroot,
#  see rpi-buildroot/docs/manual/customize-outside-br.txt for reference

# relative to Buildroot directory
PROJECT_ROOT      := $(shell pwd)
BUILDROOT_PRIMARY := rpi-buildroot
BUILDROOT_EXTERN  := br2-external

# by default just descend in to the Buildroot dir and make
all:
	$(MAKE) BR2_EXTERNAL=$(PROJECT_ROOT)/$(BUILDROOT_EXTERN) -C $(BUILDROOT_PRIMARY)

# if it didn't make sense to me, pass it to buildroot
%:
	$(MAKE) BR2_EXTERNAL=$(PROJECT_ROOT)/$(BUILDROOT_EXTERN) -C $(BUILDROOT_PRIMARY) $@
