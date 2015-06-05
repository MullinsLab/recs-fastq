prefix  := /usr/local
bin     := $(prefix)/bin

scripts := recs-fromfastq recs-tofastq

install: check-bin
	@install -dv $(bin)
	@install -cv $(scripts) $(bin)
ifeq ($(prefix),/usr/local)
	@echo "To uninstall the above, run: make uninstall"
else
	@echo "To uninstall the above, run: make uninstall prefix=$(prefix)"
endif

uninstall:
	@rm -v $(addprefix $(bin)/,$(scripts)) \
		| perl -pe 'print "rm: "'

check-bin:
	@if ! test -d $(bin) -a -w $(bin); then \
		echo "$(bin) is not writable, cannot install."; \
		echo; \
		echo "Either use sudo or install using: make install prefix=\$$HOME"; \
		echo; \
		exit 1; \
	fi
