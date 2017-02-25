all: demomd pdf latex html md
	git commit -a -m "Update examples"

demomd:
	git fetch origin master
	git checkout origin/master demo.md

pdf:
	pandoc --number-sections -t latex --filter pandoc-crossref -o output.pdf -i demo.md
	pandoc --number-sections -t latex --filter pandoc-crossref -o output-chapters.pdf -i demo.md --chapters
	pandoc --number-sections -t latex --filter pandoc-crossref -o output-cref.pdf -i demo.md -M cref=True
	pandoc --number-sections -t latex --filter pandoc-crossref -o output-listings.pdf -i demo.md -M listings --listings

latex:
	pandoc --number-sections -t latex --filter pandoc-crossref -o output.latex -i demo.md
	pandoc --number-sections -t latex --filter pandoc-crossref -o output-chapters.latex -i demo.md --chapters
	pandoc --number-sections -t latex --filter pandoc-crossref -o output-cref.latex -i demo.md -M cref=True
	pandoc --number-sections -t latex --filter pandoc-crossref -o output-listings.latex -i demo.md -M listings --listings

html:
	pandoc --number-sections -s -t html --filter pandoc-crossref -o output.html -i demo.md
	pandoc --number-sections -s -t html --filter pandoc-crossref -o output-chapters.html -i demo.md -M chapters=True

md:
	pandoc --number-sections -t markdown --filter pandoc-crossref -o output.md -i demo.md
	pandoc --number-sections -t markdown --filter pandoc-crossref -o output-chapters.md -i demo.md -M chapters=True
