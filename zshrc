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
# source ~/src/zaw/zaw

if [ -z "$GIT_AUTHOR_NAME" ]; then
  source ~/dotfiles/bash/git_identity
fi

PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Greg/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/Greg/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Greg/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/Greg/google-cloud-sdk/completion.zsh.inc'; fi

# added by Miniconda3 4.3.11 installer
export PATH="/Users/Greg/miniconda3/bin:$PATH"
