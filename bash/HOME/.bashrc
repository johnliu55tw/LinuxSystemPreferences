#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias grepe='grep -iRnH'
alias ls='ls --color=auto'
alias ll='ls -lX'
alias la='ls -alX'
alias cp='cp -iv'
alias mv='mv -iv'
PS1='[\u@\h \W]\$ '

export EDITOR="nvim"
export PATH=$HOME/bin:$PATH
export TERM="screen-256color"

# Git autocompletion script
source $HOME/scripts/git-completion.bash

# fzf
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.bash ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.bash

# bash-git-prompt
export GIT_PROMPT_ONLY_IN_REPO=1
export GIT_PROMPT_FETCH_REMOTE_STATUS=0
export GIT_PROMPT_SHOW_UNTRACKED_FILES=normal
[ -f "$HOME/.bash-git-prompt/gitprompt.sh" ] && source "$HOME/.bash-git-prompt/gitprompt.sh"
