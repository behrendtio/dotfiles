BASEDIR=`pwd`

install:
	@ln -fs $(BASEDIR)/gitignore ~/.gitignore
	@ln -fs $(BASEDIR)/gitconfig ~/.gitconfig
	@ln -fs $(BASEDIR)/zshrc ~/.zshrc
	@ln -fs $(BASEDIR)/ackrc ~/.ackrc

.PHONY: install
