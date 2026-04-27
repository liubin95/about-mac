# >>> antidote start 2024年7月19日 >>> [op]
# https://antidote.sh/
# Source zstyles you might use with antidote.
[[ -e ${HOME}/.zstyles ]] \
  && source ${HOME}/.zstyles
# load antidote
source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh
antidote load ${HOME}/.zsh_plugins.txt
# Enable completion.
autoload -Uz compinit \
  && compinit
# <<< antidote end <<<
