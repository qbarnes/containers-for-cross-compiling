#
# Build containers to provide cross-building environments (compilers,
# binutils, and basic libraries) of the supported platforms.
#

cross_platforms ?= aarch64 arm32 msdos mswindows
image_label     ?= latest


define nl


endef

define cross_vars
  $(eval $(1)_dir     = container-build-$(1))
  $(eval $(1)_file    = $(addprefix $($(1)_dir),/Dockerfile))
  $(eval $(1)_distro := $(shell grep "^FROM[ \\t]*" '$($(1)_file)' | \
  				sed -e 's:^.*/::' | tr ':' '-'))
  $(eval $(1)_tag     = $($(1)_distro)-crossbuild-$(1))
endef

$(foreach v,$(cross_platforms),$(call cross_vars,$v))

target_files = $(foreach v,$(cross_platforms),$($v_file))

all: $(target_files)

$(eval $(foreach v,$(cross_platforms),\
$($v_file): FORCE;\
	docker build . \
		--file '$$@' \
		--tag '$$($v_tag):$$(image_label)'$(nl)) \
)


show_cross_platform_%s:
	@echo "$(foreach v,$(cross_platforms),$($v_$*))"

show_%:
	@echo "$($*)"


FORCE:

.PHONY: all FORCE
.DELETE_ON_ERROR:
