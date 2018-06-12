CONFIG_PATH = $(shell if [ -f ../.config  ]; then echo "../.config"; else echo ""; fi;)


ifneq ($(CONFIG_PATH),)
include ../.config
endif

all:

save:
	(cd ../;cp .config $(CONFIG_CONF_PATH))

%_defconfig:: FORCE
	@(cp $@ ../.config)

FORCE:
