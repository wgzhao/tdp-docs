default: pdf
pdf: book.adoc
	#asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN $<
	asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=theme.yml $<
