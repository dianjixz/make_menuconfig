PHONY += menuconfig silentoldconfig clean distclean

Kconfig      := Kconfig
rm-distclean += include/generated include/config  .config

export SRC_ROOT := $(shell pwd)
export CFLAGS += -I$(SRC_ROOT)/include/



ifeq ($(quiet),silent_)
silent := -s
endif

%:: FORCE

all:

menuconfig : mconf conf
	$(Q)./$< $(Kconfig)
	$(Q)$(MAKE) silentoldconfig

%_defconfig:  
	$(Q)echo "$@ ..."
	$(Q)$(MAKE) -C configs $@
	$(Q)$(MAKE) menuconfig

saveconfig:
	$(Q)$(MAKE) -C configs save

silentoldconfig: conf
	$(Q)mkdir -p include/generated include/config
	$(Q)./$< -s --silentoldconfig $(Kconfig)

distclean:clean
	-rm -rf  $(rm-distclean)

FORCE:

.PHONY : ALL FORCE

