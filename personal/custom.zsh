# Define any custom environment scripts here.
# This file is loaded after everything else, but before Antigen is applied and ~/extra.zsh sourced.
# Put anything here that you want to exist on all your environment, and to have the highest priority
# over any other customization.

# replace ls with exa
alias l="exa"
alias ls="exa"
alias ll="exa -l"
alias la="exa -la"

# replace cat with bat
alias cat='bat --paging=never'
