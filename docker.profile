# For containers
alias docker-rm='docker rm $(docker ps -a -q)'                             # Delete all containers
alias docker-login='docker exec -it $1 bash'                               # 

function docker_copy() {
  docker tag $1 $2
}
alias docker-cp=docker_copy

function docker_rename() {
  docker tag $1 $2
  docker rmi -f $1
}
alias docker-rename=docker_rename

# For images
alias docker-rmi='docker rmi $(docker images -q)'                          # Delete all images
alias docker-rmi-none='docker rmi $(docker images -f "dangling=true" -q)'  # Delete all images for <none> only
