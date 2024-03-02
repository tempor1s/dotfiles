# Custom configs for MacOS environments.
# This file will only be executed if the current environment is MacOS.

# use homebrew ruby if it exists
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# setup dev
[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

# replace cat with bat
alias cat='bat --paging=never'
