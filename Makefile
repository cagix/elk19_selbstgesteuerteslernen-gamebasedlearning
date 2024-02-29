
## Path to this repository (to be used as git sub-module)

PWD          = $(shell pwd)
DATADIR      = .pandoc
FILTERDIR    = $(DATADIR)/filters
RESOURCEDIR  = $(DATADIR)/resources
RESOURCEPATH = .:./figs:$(DATADIR)

PANDOC      ?= docker run --rm -v $(PWD):/pandoc -v $(PWD)/$(FILTERDIR):/filters -v $(PWD)/$(RESOURCEDIR):/resources debian-texlive pandoc



## Source file and lecture prefix
## either defined here (all files) or given at cmd line like `make SRC=vl02.md`

SRC         ?= $(wildcard *.md)
ID          ?= elk19

SLIDES       = $(SRC:%.md=${ID}_%.pdf)
HTML         = $(SRC:%.md=${ID}_%.html)

TARGETDIR    = ../distr/



## Lecture options

OPTIONS        = -f markdown
OPTIONS       += --data-dir=${DATADIR}
OPTIONS       += --resource-path=${RESOURCEPATH}

BEAMEROPTIONS  = -t beamer
BEAMEROPTIONS += --pdf-engine=pdflatex
BEAMEROPTIONS += --default-image-extension=pdf
BEAMEROPTIONS += -V theme:metropolis
BEAMEROPTIONS += -V themeoptions:numbering=none -V themeoptions:progressbar=foot
BEAMEROPTIONS += -V fontsize=smaller
#BEAMEROPTIONS += -V aspectratio=169
BEAMEROPTIONS += --strip-comments
BEAMEROPTIONS += --slide-level=2
BEAMEROPTIONS += --lua-filter=${FILTERDIR}/tex.lua
BEAMEROPTIONS += --include-in-header=${RESOURCEDIR}/definitions.tex
BEAMEROPTIONS += --include-in-header=${RESOURCEDIR}/beamer.tex
BEAMEROPTIONS += --filter pandoc-citeproc
BEAMEROPTIONS += -M suppress-bibliography=true -M link-citations=false
BEAMEROPTIONS += $(OPTIONS)

HTMLOPTIONS    = -t html
HTMLOPTIONS   += --default-image-extension=png
HTMLOPTIONS   += --standalone --self-contained
HTMLOPTIONS   += --number-sections
HTMLOPTIONS   += --toc --toc-depth=2
HTMLOPTIONS   += --strip-comments
HTMLOPTIONS   += --lua-filter=${FILTERDIR}/html.lua
HTMLOPTIONS   += --css=${RESOURCEDIR}/html.css
# insert `<script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-AMS_CHTML-full" type="text/javascript" data-external="1"></script>`
# with data-external="1" to prevent incorporating MathJax into the generated HTML document when using --self-contained
HTMLOPTIONS   += --include-in-header=${RESOURCEDIR}/mathjaxurl.html
# use MathJax; URL points to blank dummy document to prevent incorporating MathJax into the generated HTML document when using --self-contained
HTMLOPTIONS   += --mathjax=${RESOURCEDIR}/dummy.js
HTMLOPTIONS   += --filter pandoc-citeproc
HTMLOPTIONS   += --lua-filter=${FILTERDIR}/fhbib.lua
HTMLOPTIONS   += $(OPTIONS)



## Targets

all: $(SLIDES) $(HTML)

$(SRC:.md=): %: ${ID}_%.pdf ${ID}_%.html

${ID}_%.pdf: %.md elk19.yaml
	$(PANDOC) ${BEAMEROPTIONS} -o $@ $^

${ID}_%.html: %.md elk19.yaml
	$(PANDOC) ${HTMLOPTIONS} -o $@ $^


install: $(TARGETDIR) $(SLIDES) $(HTML)
	mv ${SLIDES} $(TARGETDIR)
	mv ${HTML} $(TARGETDIR)

$(TARGETDIR):
	mkdir $@


clean:
	rm -f $(SLIDES) $(HTML)


.PHONY: all install clean
