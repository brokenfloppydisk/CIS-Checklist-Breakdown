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

.PHONY: help Makefile

# Github Pages build
github:
	@make html
	@echo Creating README.md
	@cat ./source/about/about.md >> README.md
	@echo "\n#" -n >> README.md
	@cat ./source/about/contributing.md >> README.md
	@echo Copying files to docs directory
	@cp -r ./build/html/ ./docs/
	@echo Creating .nojekyll
	@echo "" > ./docs/.nojekyll


# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
