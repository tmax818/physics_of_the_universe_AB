
all:
	pandoc -s -o NOTES.md NOTES.org


back:
	pandoc -s -o NOTES.org NOTES.md