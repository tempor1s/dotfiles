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

# install packer.nvim
[ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ] && git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install rust
curl https://sh.rustup.rs -sSf | sh -s -- -y

# install tree-sitter-cli
cargo install tree-sitter-cli
