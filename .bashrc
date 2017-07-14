# Environment definition
export LSCOLORS=dxfxcxdxbxegedabagacad

export PATH=$PATH:~/.bitio-bin
export PATH="/usr/local/sbin:$PATH"
export EDITOR=vim

# make every file folder be writable by user and groups (775). This value comes from 777 - 775
umask 077

# git + terminal
#GIT_PS1_SHOWCOLORHINTS=true
#GIT_PS1_SHOWDIRTYSTATE=true
#MAGENTA="\[\033[0;35m\]"
#YELLOW="\[\033[0;33m\]"
#BLUE="\[\033[34m\]"
#LIGHT_GRAY="\[\033[0;37m\]"
#CYAN="\[\033[0;36m\]"
#GREEN="\[\033[0;32m\]"
source ~/.git-prompt.sh
source ~/.git-completion.bash

# bash:tip_colors_and_formatting
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\H\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]
#$(
#if [[ $(__git_ps1) =~ \*\)$ ]]
## a file has been modified but not added
#then echo "'$YELLOW'"$(__git_ps1 "(%s) ")
#elif [[ $(__git_ps1) =~ \+\)$ ]]
## a file has been added, but not commited
#then echo "'$MAGENTA'"$(__git_ps1 "(%s) ")
## the state is clean, changes are commited
#else echo "'$CYAN'"$(__git_ps1 "(%s) ")
#fi
#)\[\033[00m\][`date "+%H:%M:%S"`] >'

# alias definition
alias grep='grep --color'
alias vi='vim'
alias ls='ls -Gh'
alias ll='ls -l'
alias gll='ll | grep'
alias gh='history | grep'
alias wget='wget --no-check-certificate'

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
	. /opt/local/etc/profile.d/bash_completion.sh
fi
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Node Version Manager (nvm)
export NVM_DIR="/Users/franciscocallemoreno/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -r $NVM_DIR/bash_completion  ]] && . $NVM_DIR/bash_completion

# direnv is an environment variable manager for your shell
# https://github.com/zimbatm/direnv
eval "$(direnv hook bash)"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# powerline-shell
function _update_ps1() {
  #export PS1="$(~/Development/github/powerline-shell/powerline-shell.py $? 2> /dev/null)"
  export PS1="$(~/Development/github/powerline-shell/powerline-shell.py $? )"
}
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# python
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# yarn
export PATH="$HOME/.yarn/bin:$PATH"
