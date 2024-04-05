# Custom actions to take on initial install of dotfiles.
# This runs after default install actions, so you can overwrite changes it makes if you want.

# install deps!
if [ $SPIN ]; then
  sudo apt-get install -y bat
  sudo apt-get install -y exa
  sudo apt-get install -y neovim
  sudo apt-get install -y ripgrep
  sudo apt-get install -y tmux
else
  brew install eza
  brew install bat
  brew install neovim
  brew install ripgrep
  brew install tmux
fi

# link in neovim configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/nvim ~/.config/nvim

# link in tmux configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.conf ~/.tmux.conf
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/tmux/.tmux.theme ~/.tmux.theme

# link in alacritty configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/alacritty.toml ~/.alacritty.toml
