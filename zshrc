# vi: set ft=sh :
# Cloned in large part from https://github.com/spicycode/ze-best-zsh-config/

source ~/dotfiles/zsh/checks
source ~/dotfiles/zsh/colors
source ~/dotfiles/zsh/setopt
source ~/dotfiles/zsh/exports
source ~/dotfiles/zsh/prompt
source ~/dotfiles/zsh/completion
source ~/dotfiles/zsh/aliases
source ~/dotfiles/zsh/bindkeys
source ~/dotfiles/zsh/history
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -z "$GIT_AUTHOR_NAME" ]; then
  source ~/dotfiles/bash/git_identity
fi
