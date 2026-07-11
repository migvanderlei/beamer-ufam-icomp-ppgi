# Beamer IComp / UFAM — local builds
#
#   make            # example.pdf (default)
#   make all        # example.pdf + main.pdf
#   make main
#   make clean
#
# Uses latexmk when available (handles multiple passes).
# Fallback: pdflatex twice.

HAS_LATEXMK := $(shell command -v latexmk 2>/dev/null)
ifeq ($(HAS_LATEXMK),)
  LATEX := pdflatex
  USE_LATEXMK := 0
else
  LATEX ?= latexmk
  USE_LATEXMK := 1
endif

LATEXMKFLAGS ?= -pdf -interaction=nonstopmode -halt-on-error -file-line-error
PDFLATEXFLAGS ?= -interaction=nonstopmode -halt-on-error -file-line-error

.PHONY: all example main clean help

help:
	@echo "Targets:"
	@echo "  make / make example  — build example.pdf"
	@echo "  make main            — build main.pdf"
	@echo "  make all             — build both demos"
	@echo "  make clean           — remove LaTeX auxiliaries and PDFs"
	@echo ""
	@echo "Engine: $(LATEX)"

all: example main

example: example.pdf
main: main.pdf

%.pdf: %.tex beamerthemeIComp.sty
ifeq ($(USE_LATEXMK),1)
	$(LATEX) $(LATEXMKFLAGS) $<
else
	pdflatex $(PDFLATEXFLAGS) $<
	pdflatex $(PDFLATEXFLAGS) $<
endif

clean:
	@rm -f \
	  *.aux *.log *.nav *.out *.snm *.toc *.vrb \
	  *.fls *.fdb_latexmk *.synctex.gz \
	  example.pdf main.pdf example-en.pdf
	@echo "Cleaned."
