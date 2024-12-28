# Custom actions to take on initial install of dotfiles.
# This runs after default install actions, so you can overwrite changes it makes if you want.

install_rust() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
}
install_rust

# install deps!
if [ $SPIN ]; then
	sudo apt-get install -y bat
	sudo apt-get install -y ripgrep
	sudo apt-get install -y tmux
	sudo apt-get install -y zellij
	sudo apt-get install -y fd-find
else
	brew install bat
	brew install ripgrep
	brew install fd
	brew install ghostty
  brew install jesseduffield/lazygit/lazygit
fi

# link in tmux configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.conf ~/.tmux.conf
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.theme ~/.tmux.theme

# link in alacritty configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/alacritty.toml ~/.alacritty.toml

# link in ghostty configs
mkdir -p ~/.config/ghostty
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/ghostty/config ~/.config/ghostty/config
