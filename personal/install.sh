# Custom actions to take on initial install of dotfiles.
# This runs after default install actions, so you can overwrite changes it makes if you want.


# install exa for better ls
if [ $SPIN ]; then
  sudo apt-get install -y exa
else
  brew install exa
fi
