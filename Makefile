PACKAGES=ocaml_starter

all: build test

build:
	dune build -p $(PACKAGES)

run:
	dune exec ocaml_starter

test: build
	dune runtest --display=quiet --cache=disabled --no-buffer --force

clean:
	dune clean

doc:
	dune build @doc

# examples:
# 	dune build examples/id_sexp.exe

format:
	@dune build $(DUNE_OPTS) @fmt --auto-promote

format-check:
	@dune build $(DUNE_OPTS) @fmt --display=quiet

.PHONY: all build test clean build doc
