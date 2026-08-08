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
	@ln -fs $(BASEDIR)/opencode_tui.json ~/.config/opencode/tui.json
	@mkdir -p ~/.config/hunk
	@ln -fs $(BASEDIR)/hunk/config.toml ~/.config/hunk/config.toml
	@mkdir -p ~/.pi/agent
	@ln -fs $(BASEDIR)/pi/settings.json ~/.pi/agent/settings.json
	@ln -fs $(BASEDIR)/pi/keybindings.json ~/.pi/agent/keybindings.json
	@ln -fs $(BASEDIR)/pi/APPEND_SYSTEM.md ~/.pi/agent/APPEND_SYSTEM.md
	@ln -fs $(BASEDIR)/pi/pi-statusbar-mario.json ~/.pi/agent/pi-statusbar-mario.json
	@ln -fs $(BASEDIR)/pi/pi-btw.json ~/.pi/agent/pi-btw.json

.PHONY: install
