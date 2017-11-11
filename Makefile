all:
	ocamlbuild -use-ocamlfind main.native
	mv main.native bin/main

test:
	ocamlbuild -use-ocamlfind test.native
	mv test.native bin/test
	bin/test

clean:
	ocamlbuild -clean
	find . -name '*.native' | xargs rm
	find . -name '*.byte' | xargs rm
	rm -f bin/main
	rm -f bin/test

.PHONY: test default