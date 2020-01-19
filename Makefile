# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

all:
	make epub
	rm "$(BUILDDIR)"/regierungsprogramm-2020-2014.epub || echo "epub did not exist"
	rm "$(BUILDDIR)"/regierungsprogramm-2020-2014.mobi || echo "mobi did not exist"
	cd "$(BUILDDIR)"/epub && zip -r ../../docs/regierungsprogramm-2020-2014.epub . && cd -
	ebook-convert docs/regierungsprogramm-2020-2014.epub docs/regierungsprogramm-2020-2014.mobi
	rm -r $(BUILDDIR)/epub/*
	make html

clean:
	rm -r $(BUILDDIR)/epub/* || echo "no epub directory"
	rm -r $(BUILDDIR)/html/* || echo no html
	rm -r $(BUILDDIR)/doctrees || echo no doctrees
	rm -r docs/* || echo "no docs file"

.PHONY: help all clean

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
