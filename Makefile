BASEDIR=`pwd`

install:
	@ln -fs $(BASEDIR)/gitignore ~/.gitignore
	@ln -fs $(BASEDIR)/gitconfig ~/.gitconfig
	@ln -fs $(BASEDIR)/zshrc ~/.zshrc
	@ln -fs $(BASEDIR)/irbrc ~/.irbrc
	@ln -fs $(BASEDIR)/pryrc ~/.pryrc
	@ln -fs $(BASEDIR)/gemrc ~/.gemrc
	@ln -fs $(BASEDIR)/tmux.conf ~/.tmux.conf
	@ln -fs $(BASEDIR)/psqlrc ~/.psqlrc
	@mkdir -p ~/.config/ghostty
	@ln -fs $(BASEDIR)/ghostty ~/.config/ghostty/config
	@mkdir -p ~/.config/opencode
	@ln -fs $(BASEDIR)/opencode.json ~/.config/opencode/opencode.json

.PHONY: install
