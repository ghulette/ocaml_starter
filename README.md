# ocaml_starter

A skeleton OCaml project with some sane defaults using dune and containers, and using a Makefile so I don't have to interact with dune too much.

To get started, first set up a local opam switch:

```
$ opam switch create . --deps-only
$ eval $(opam env)
```

Then install some a reasonable set of development tools in that switch:

```
$ opam install dune ocamlformat ocaml-lsp-server odoc utop
```

Then build and run the project:

```
$ make
$ make run
```
