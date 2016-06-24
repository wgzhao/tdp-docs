.PHONY: all

all: pdf html
	
html: tdp27_install.adoc
	asciidoctor --trace  -o target/TDP安装手册.html $< 
	
pdf: tdp27_install.adoc
	asciidoctor-pdf  -a pdf-fontsdir=./fonts -a pdf-stylesdir=themes -a pdf-style=tdp -a notitle -o target/TDPV2.7安装手册.pdf $< 

clean:
	rm -f target/*