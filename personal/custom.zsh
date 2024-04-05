# sudo rm -r ~/.local/state/nvim/Define any custom environment scripts here.
# This file is loaded after everything else, but before Antigen is applied and ~/extra.zsh sourced.
# Put anything here that you want to exist on all your environment, and to have the highest priority
# over any other customization.

# replace ls with exz
alias l="eza"
alias ls="eza"
alias ll="eza -l"
alias la="eza -la"

# replace vim with nvim
alias vim="nvim"

# spin shortcuts
alias sus="spin up sidekick:web"
alias dt="dev test"
alias dr="dev refresh"
alias gdr="git pull && dev refresh"
