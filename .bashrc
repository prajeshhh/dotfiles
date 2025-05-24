#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# starship
eval "$(starship init bash)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# pyenv
eval "$(pyenv init --path)"
export TMPDIR=$HOME/tmp

# android
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# cargo
PATH=$PATH:$HOME/.cargo/bin

# load custom environment variables
if [ -f "$HOME/.bash_env" ]; then
    . "$HOME/.bash_env"
fi
