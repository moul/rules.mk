all: generate install test verify tidy

generate verify install test help tidy:
	for dir in $(wildcard */); do \
	  (cd $$dir; set -xe; \
	    make $@; \
	  ); \
	done
.PHONY: generate verify install test help tidy
