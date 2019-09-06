.PHONY: all install clean

all: install pdf

install:
	bash ./resources/scripts/install_md2resume.sh

pdf: 
	markdown-resume/bin/md2resume pdf -t resources/style/modern/ resume.md ./

clean:
	rm -rf resume.pdf 
