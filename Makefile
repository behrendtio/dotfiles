BASEDIR=`pwd`

install:
	@ln -fs $(BASEDIR)/gitignore ~/.gitignore
	@ln -fs $(BASEDIR)/gitconfig ~/.gitconfig
	@ln -fs $(BASEDIR)/zshrc ~/.zshrc
	@ln -fs $(BASEDIR)/ackrc ~/.ackrc
	@ln -fs $(BASEDIR)/irbrc ~/.irbrc
	@ln -fs $(BASEDIR)/tmux.conf ~/.tmux.conf

.PHONY: install
