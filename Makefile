%.pdf: %.md
	pandoc \
		$< --pdf-engine=xelatex \
		-o $@