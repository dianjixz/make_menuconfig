PHONY += menuconfig silentoldconfig clean distclean

Q            := @
obj          := $(CURDIR)/kconfig
SUBDIR       := kconfig
Kconfig      := Kconfig
SRC_DIR     += src
rm-distclean += include/generated include/config  .config

export SRC_ROOT := $(shell pwd)
export CFLAGS += -I$(SRC_ROOT)/include/



ifeq ($(quiet),silent_)
silent := -s
endif

%:: FORCE

ALL:
	$(foreach  dir,$(SRC_DIR),make -C $(dir);)

menuconfig : $(obj)/mconf $(obj)/conf
	$(Q)$< $(Kconfig)
	$(Q)$(MAKE) silentoldconfig

%_defconfig:  
	$(Q)echo "$@ ..."
	$(Q)$(MAKE) -C configs $@
	$(Q)$(MAKE) menuconfig

saveconfig:
	$(Q)$(MAKE) -C configs save

$(obj)/mconf:
	$(Q)$(MAKE) -C $(SUBDIR)

silentoldconfig: $(obj)/conf
	$(Q)mkdir -p include/generated include/config
	$(Q)$< -s --silentoldconfig $(Kconfig)

clean:
	$(foreach  dir,$(SRC_DIR),make -C $(dir) clean;)

distclean:clean
	-rm -rf  $(rm-distclean)
	$(MAKE)  -C kconfig clean


FORCE:

.PHONY : ALL defconfig FORCE

