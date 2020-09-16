include rules.mk

generate:
	GO111MODULE=off go get github.com/campoy/embedmd
	mkdir -p .tmp
	make -s help > .tmp/root-help.txt
	cd test; for test in *; do (cd $$test; make -s help) > ../.tmp/test-$$test.txt; done
	embedmd -w README.md
	#rm -rf .tmp
.PHONY: generate

test:
	cd test; make
.PHONY: test
