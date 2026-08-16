

all:
	pandoc -s -o NOTES.md NOTES.org


back:
	pandoc -s -o NOTES.org NOTES.md


slides:
	pandoc -t revealjs -s -o index.html SLIDES.md \
	-V revealjs-url=./reveal.js \
	-V theme=night \
	-V transition=linear \
	--slide-level 3

pdf:
	pandoc -s -o syllabus.pdf syllabus.md \
