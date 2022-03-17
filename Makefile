GO	= env GO111MODULE=on go
CMD	= cmd
BIN	= bin
SOURCES	= $(sort $(wildcard $(CMD)/*/*.go))

.PHONY: all
all: format build


.PHONY: build
build:
	@for f in $(SOURCES); do \
		d=$$(dirname $${f/$(CMD)/$(BIN)}); \
		\
		mkdir -p "$$d"; \
		(set -x; $(GO) build -o "$$d" "$$f"); \
	done


.PHONY: format
format:
	@for f in $(SOURCES); do \
		(set -x; $(GO) fmt "$$f"); \
	done


.PHONY: clean
clean:
	@rm -rf $(BIN)
