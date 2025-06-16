# install deps!
if [ $SPIN ]; then
	sudo apt-get install -y ripgrep
	npm install --global pure-prompt
	tic -x ~/$DOTFILES_DIRECTORY_NAME/personal/ghostty_terminfo.txt
else
	brew install bat
	brew install ripgrep
	brew install fd
	brew install zellij
	brew install pure
fi

# link in tmux configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.conf ~/.tmux.conf
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.theme ~/.tmux.theme

# link in alacritty configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/alacritty.toml ~/.alacritty.toml

# link in ghostty configs
mkdir -p ~/.config/ghostty
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/ghostty/config ~/.config/ghostty/config

# link in claude configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/claude/settings.json ~/.claude/settings.json
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/claude/CLAUDE.md ~/.claude/CLAUDE.md
