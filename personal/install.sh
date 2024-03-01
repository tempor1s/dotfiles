# Custom actions to take on initial install of dotfiles.
# This runs after default install actions, so you can overwrite changes it makes if you want.

# install deps!
if [ $SPIN ]; then
  sudo apt-get install -y bat
  sudo apt-get install -y exa
  sudo apt-get install -y neovim
  sudo apt-get install -y ripgrep
else
  brew install exa
  brew install bat
  brew install neovim
  brew install ripgrep
fi

# Link in the neovim configs
ln -vsfn ~/$DOTFILES_DIRECTORY_NAME/personal/nvim ~/.config/nvim
