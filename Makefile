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
	cd "$(BUILDDIR)"/epub && zip -r ../regierungsprogramm-2020-2014.epub . && cd -
	rm -r $(BUILDDIR)/epub/*
	make html
	cd docs && ln -sf ../build/regierungsprogramm-2020-2014.epub && cd -

clean:
	rm -r $(BUILDDIR)/epub/* || echo "no epub directory"
	rm -r $(BUILDDIR)/html/* || echo no html
	rm "$(BUILDDIR)"/regierungsprogramm-2020-2014.epub || echo "no epub file"

.PHONY: help all clean

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
