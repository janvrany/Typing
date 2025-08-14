PROJECT=Typing

all: build

../makefiles/%.gmk:
	git submodule update --init --recursive $(dir $@)

-include GNUmakefile.local
include ../makefiles/stx.gmk
include ../makefiles/git.gmk

build: prereq
	@echo "To run Smalltalk/X with $(PROJECT) loaded, run:"
	@echo ""
	@echo "    make run"
	@echo ""


run: $(STX)
	$(STX) --package-path ../src --load BaselineOf$(PROJECT)

test: $(STX)
	$(STX) \
		--package-path ../src \
		--load BaselineOf$(PROJECT) --run Builder::ReportRunner \
		-r Builder::TestReport --fail-on-failure \
			-p 'Typing-Examples'

clean::

mrproper:: clean
