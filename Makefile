INPUT = main.md $(shell find . -ipath './src/chapters/*.md' | sort -nk5 -t'/')

FLAGS = --fail-if-warnings --toc --citeproc --highlight-style breezedark
HTML_FLAGS = -t chunkedhtml --split-level=3 --template=template.html

PDF_FILTERS = $(shell find . -ipath './src/filters/pdf/*.lua' -exec echo --lua-filter {} \;)
HTML_FILTERS = $(shell find . -ipath './src/filters/html/*.lua' -exec echo --lua-filter {} \;)

DOCKER_IMAGE = freedevorg/websec:latest


.PHONY: default
default:
	@echo "You should specify a recipe! See the README.md for help." >&2
	@exit 1


.PHONY: render
render:
	cd src && pandoc $(subst ./src,.,$(FLAGS) $(EXTRAFLAGS) -o $(OUTPUT) $(INPUT))


.PHONY: pdf
pdf:
	@$(MAKE) render OUTPUT="../exercícios-de-web-security.pdf" EXTRAFLAGS="$(PDF_FILTERS)"


.PHONY: html
html:
	@rm -rf "output/"
	@$(MAKE) render OUTPUT="../output/" EXTRAFLAGS="$(HTML_FLAGS) $(HTML_FILTERS)"
	@$(MAKE) static-files


.PHONY: static-files
static-files:
	cp -r src/static/* output/


.PHONY: docker
docker:
	docker run --rm -it -v $(shell pwd):/app $(DOCKER_IMAGE) $(ARGS)
	@exit 0


.PHONY: docker-build
docker-build:
	docker build -t $(DOCKER_IMAGE) .


.PHONY: clean
clean:
	rm -f *.pdf
	rm -rf output/
