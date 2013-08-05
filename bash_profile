# vi: set ft=sh :

source ~/.bashrc #for integration with work puppet bashrc
source ~/dotfiles/bash_completion.d/git-completion.bash
source ~/dotfiles/bash_completion.d/git-prompt.sh
source ~/dotfiles/bash_completion.d/tmux
source ~/dotfiles/bash/env
source ~/dotfiles/bash/config
source ~/dotfiles/bash/aliases
if [ -z "$GIT_AUTHOR_NAME" ]; then
  source ~/dotfiles/bash/git_identity
fi

# terminal coloring
if [ "$COLORTERM" == "gnome-terminal" ]; then
	export TERM="xterm-256color"
fi
export CLICOLOR=1
export LSCOLORS=dxfxxxxxbxegedbxbxdxdx

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# In addition, if you set GIT_PS1_SHOWDIRTYSTATE to a nonempty value,
# unstaged (*) and staged (+) changes will be shown next to the branch
# name.  You can configure this per-repository with the
# bash.showDirtyState variable, which defaults to true once
# GIT_PS1_SHOWDIRTYSTATE is enabled.
GIT_PS1_SHOWDIRTYSTATE="true"

# You can also see if currently something is stashed, by setting
# GIT_PS1_SHOWSTASHSTATE to a nonempty value. If something is stashed,
# then a '$' will be shown next to the branch name.
#GIT_PS1_SHOWSTASHSTATE="true"

# If you would like to see if there're untracked files, then you can set
# GIT_PS1_SHOWUNTRACKEDFILES to a nonempty value. If there're untracked
# files, then a '%' will be shown next to the branch name.
GIT_PS1_SHOWUNTRACKEDFILES="true"

# If you would like to see the difference between HEAD and its upstream,
# set GIT_PS1_SHOWUPSTREAM="auto".  A "<" indicates you are behind, ">"
# indicates you are ahead, "<>" indicates you have diverged and "="
# indicates that there is no difference. You can further control
# behaviour by setting GIT_PS1_SHOWUPSTREAM to a space-separated list
# of values: verbose       show number of commits ahead/behind (+/-) upstream
GIT_PS1_SHOWUPSTREAM="verbose git"

#Keep git autocompletion for g alias function
complete -o default -o nospace -F _git g

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
RESET="\[\033[0;0;m\]"

if [ -n "$SSH_CONNECTION" ]; then
  PS1="$GREEN\u \w$RESET\$(__git_ps1 \" $RED(%s)$RESET\")[\h]\$ "
else
  PS1="$GREEN\u \w$RESET\$(__git_ps1 \" $RED(%s)$RESET\")\$ "
fi

unset RED YELLOW GREEN RESET

set -o vi

alias ls='ls -lah'
