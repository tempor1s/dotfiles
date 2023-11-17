# Custom configs for MacOS environments.
# This file will only be executed if the current environment is MacOS.

# setup dev
[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

eval "$(github-copilot-cli alias -- "$0")"
