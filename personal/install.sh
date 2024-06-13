# Custom actions to take on initial install of dotfiles.
# This runs after default install actions, so you can overwrite changes it makes if you want.

# function to install eza in Spin
install_eza_in_spin() {
	sudo mkdir -p /etc/apt/keyrings
	wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
	echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
	sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
	sudo apt update
	sudo apt install -y eza
}

install_rust() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
}
install_rust

# install deps!
if [ $SPIN ]; then
	sudo apt-get install -y bat
	sudo apt-get install -y neovim
	sudo apt-get install -y ripgrep
	sudo apt-get install -y tmux
	sudo apt-get install -y zellij
	sudo apt-get install -y fd-find
  # sudo apt-get install -y lazygit
	cargo install --locked zellij
  install_eza_in_spin
else
	brew install eza
	brew install bat
	brew install neovim
	brew install ripgrep
	brew install zellij
	brew install fd
  brew install jesseduffield/lazygit/lazygit
fi

# link in neovim configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/nvim ~/.config/nvim

# link in the zellij config
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/zellij ~/.config/zellij

# link in tmux configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.conf ~/.tmux.conf
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.theme ~/.tmux.theme

# link in alacritty configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/alacritty.toml ~/.alacritty.toml
