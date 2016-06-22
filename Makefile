default: pdf
pdf: tdp27_install.adoc
	bundle exec asciidoctor -r ./config.rb $< >/dev/null 
	bundle exec asciidoctor-pdf -r ./config.rb -a pdf-style=KaiGenGothicCN $< 2>/dev/null
