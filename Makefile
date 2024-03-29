# Alternative GNU Make workspace makefile autogenerated by Premake

ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug)
  StartingProject_config = debug

else ifeq ($(config),release)
  StartingProject_config = release

else
  $(error "invalid configuration $(config)")
endif

PROJECTS := StartingProject

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

StartingProject:
ifneq (,$(StartingProject_config))
	@echo "==== Building StartingProject ($(StartingProject_config)) ===="
	@${MAKE} --no-print-directory -C . -f StartingProject.make config=$(StartingProject_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f StartingProject.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug"
	@echo "  release"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   StartingProject"
	@echo ""
	@echo "For more information, see https://github.com/premake/premake-core/wiki"