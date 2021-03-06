eval "$(rbenv init -)"

export PATH="$PATH:$HOME/.nodebrew/current/bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export TERM=xterm-color

# bash
alias ls='pwd;ls -aGl'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias sudo='sudo '
alias g='git'
alias d='sudo docker'
alias docker='sudo docker'
alias dc='docker-compose'
alias y='yarn'
alias c='clear'
alias tensorflow='source ~/tensorflow/bin/activate'
alias rm='rmtrash'

# peco
alias  hp='eval $(history | cut -c 8-|peco)'

# gcloud
alias gcloud="sudo gcloud"
alias gc="gcloud"
alias gcc="gcloud compute"
alias gcclist="gcloud compute instances list"

if [ -e $HOME/google-cloud-sdk/path.bash.inc ]; then
  # The next line updates PATH for the Google Cloud SDK.
  source $HOME/google-cloud-sdk/path.bash.inc
fi
if [ -e $HOME/google-cloud-sdk/completion.bash.inc ]; then
  # The next line enables shell command completion for gcloud.
  source $HOME/google-cloud-sdk/completion.bash.inc
fi
if [ -e $HOME/dotfiles/docker.profile ]; then
  source $HOME/dotfiles/docker.profile
fi
