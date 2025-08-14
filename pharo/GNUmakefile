PROJECT=Typing

all: build

../makefiles/%.gmk:
	git submodule update --init --recursive $(dir $@)

-include GNUmakefile.local
include ../makefiles/pharo.gmk
include ../makefiles/git.gmk

build: prereq $(PROJECT).image
	@echo ""
	@echo "To open Pharo $(PROJECT) image run:"
	@echo ""
	@echo "    make run"
	@echo ""


$(PROJECT).image: ../src/*/*.st
	$(call pharo-copy-image, $(PHARO_IMAGE), $@)
	$(call pharo-load-local, $@, $(PROJECT), ../src)

run: build
	$(PHARO_VM) $(PROJECT).image

test: $(PROJECT).image $(PHARO_VM)
	$(PHARO_VM_HEADLESS) $< test --fail-on-failure \
		'Typing-Examples'

clean::
	rm -f $(PROJECT).image $(PROJECT).changes
