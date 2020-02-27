
all: aula1.pdf aula2.pdf aula3.pdf


%.pdf: %.md %_h.md
	pandoc -t beamer --slide-level=2 -f markdown $*_h.md $< -o $@
