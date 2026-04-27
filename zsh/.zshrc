typeset -g ZSH_CONFIG_DIR=${${(%):-%N}:A:h}

for config_file in \
  "$ZSH_CONFIG_DIR/rc.d/00-antidote.zsh" \
  "$ZSH_CONFIG_DIR/rc.d/10-environment.zsh" \
  "$ZSH_CONFIG_DIR/rc.d/20-aliases.zsh" \
  "$ZSH_CONFIG_DIR/rc.d/30-tooling.zsh" \
  "$ZSH_CONFIG_DIR/rc.d/40-languages.zsh" \
  "$ZSH_CONFIG_DIR/rc.d/50-containers-k8s.zsh" \
  "$ZSH_CONFIG_DIR/rc.d/60-functions.zsh" \
  "$ZSH_CONFIG_DIR/rc.d/90-prompt.zsh"
do
  source "$config_file"
done

unset config_file
