
MN_SELF := $(lastword $(MAKEFILE_LIST))
MN_SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

MKDIR_P := call $(MN_SELF_DIR)mkdir_p.bat
RM := call $(MN_SELF_DIR)rm.bat
