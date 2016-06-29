.PHONY: clean

all: html pdf
	
SOURCE := tdp27_install.adoc
	
html: $(SOURCE)
	asciidoctor --trace  -o ../$(basename $(SOURCE)).html $(SOURCE)
	
pdf: $(SOURCE)
	asciidoctor-pdf  -a pdf-fontsdir=../fonts -a pdf-stylesdir=../themes -a pdf-style=tdp -a notitle -o ../$(basename $(SOURCE)).pdf  $(SOURCE) 

docbook: $SOURCE
	asciidoctor -b docbook5 -d book -o $(basename $SOURCE).xml $(SOURCE)

clean:
	rm -f ../$(basename $(SOURCE)).{pdf,html,xml}