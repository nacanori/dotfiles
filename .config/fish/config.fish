set -x PATH $PATH $HOME/.nodebrew/current/bin $HOME/.rbenv/shims $HOME/google-cloud-sdk/bin

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

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

# gcloud
alias gcloud="sudo gcloud"
alias gc="gcloud"
alias gcc="gcloud compute"
alias gcclist="gcloud compute instances list"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]
  source "$HOME/google-cloud-sdk/path.fish.inc"
end

