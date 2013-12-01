BASEDIR=`pwd`

install:
	@ln -fs $(BASEDIR)/gitignore ~/.gitignore
	@ln -fs $(BASEDIR)/gitconfig ~/.gitconfig
	@ln -fs $(BASEDIR)/zshrc ~/.zshrc
	@ln -fs $(BASEDIR)/ackrc ~/.ackrc
	@ln -fs $(BASEDIR)/irbrc ~/.irbrc
	@ln -fs $(BASEDIR)/gemrc ~/.gemrc
	@ln -fs $(BASEDIR)/tmux.conf ~/.tmux.conf
	@mkdir -p ~/.config/terminator
	@ln -fs $(BASEDIR)/terminator ~/.config/terminator/config
	@ln -fs $(BASEDIR)/psqlrc ~/.psqlrc

.PHONY: install
