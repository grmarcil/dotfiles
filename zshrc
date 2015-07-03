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

precmd() {
  if [[ -n "$TMUX" ]]; then
    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
  fi
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -z "$GIT_AUTHOR_NAME" ]; then
  source ~/dotfiles/bash/git_identity
fi


# https://github.com/blinks zsh theme

# function _prompt_char() {
#   if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
#     echo "%{%F{blue}%}±%{%f%k%b%}"
#   else
#     echo ' '
#   fi
# }

# ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B%F{blue}%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{white}%B%F{green}%}]"
# ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
# ZSH_THEME_GIT_PROMPT_CLEAN=""

# PROMPT='%{%f%k%b%}
# %{%K{white}%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m%{%B%F{green}%} %{%b%F{yellow}%K{white}%}%~%{%B%F{green}%}$(git_prompt_info)%E%{%f%k%b%}
# %{%K{white}%}$(_prompt_char)%{%K{white}%} %#%{%f%k%b%} '

# RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'
