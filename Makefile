GO	= env GO111MODULE=on go
CMD	= cmd
BIN	= bin
SOURCES	= $(wildcard $(CMD)/*/*.go)

.PHONY: all
all:
	for f in $(SOURCES); do \
		d=$$(dirname $${f/$(CMD)/$(BIN)}); \
		mkdir -p "$$d"; \
		$(GO) build -o "$$d" "$$f"; \
	done


.PHONY: format
format:
	for f in $(SOURCES); do \
		$(GO) fmt "$$f"; \
	done


.PHONY: clean
clean:
	@rm -rf $(BIN)
