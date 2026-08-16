
all:
	pandoc -s -o ./public/TEXT.txt ./public/TEXT.org


slides:
	pandoc -t revealjs -s -o index.html SLIDES.md \
	-V revealjs-url=./reveal.js \
	-V theme=night \
	-V transition=linear \
	--slide-level 3

site:
	pandoc -s --toc -c \
	./assets/css/pandoc.css \
	-A ./assets/html/footer.html \
	./public/TEXT.txt \
	-o index.html   
