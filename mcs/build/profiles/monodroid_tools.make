# -*- makefile -*-

BOOTSTRAP_PROFILE = build

BOOTSTRAP_MCS = MONO_PATH="$(topdir)/class/lib/$(BOOTSTRAP_PROFILE)$(PLATFORM_PATH_SEPARATOR)$$MONO_PATH" $(INTERNAL_CSC)
MCS = $(BOOTSTRAP_MCS)

profile-check:
	@:

TARGET_NET_REFERENCE = v4.6
DEFAULT_REFERENCES = mscorlib

PROFILE_MCS_FLAGS = -d:NET_4_6 -d:MONO -d:WIN_PLATFORM -nowarn:1699 -nostdlib $(PLATFORM_DEBUG_FLAGS)

FRAMEWORK_VERSION = 4.5

NO_INSTALL = yes
