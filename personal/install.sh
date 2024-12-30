# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# install deps!
if [ $SPIN ]; then
	sudo apt-get install -y ripgrep
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
