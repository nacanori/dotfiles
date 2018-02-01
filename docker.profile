# delete all containers
alias docker-rm='docker rm -f $(docker ps -a -q)'

# login with bash container
alias docker-login='docker exec -it $1 bash'                               # 

# copy image
function docker_copy() {
  docker tag $1 $2
}
alias docker-cp=docker_copy

# rename image
function docker_rename() {
  docker tag $1 $2
  docker rmi -f $1
}
alias docker-rename=docker_rename

# delete all images
alias docker-rmi='docker rmi -f $(docker images -q)'

# delete all images for <none> only
alias docker-rmi-none='docker rmi -f $(docker images -f "dangling=true" -q)'

# add variable DOCKER_ID with UID of most recent container
alias docker-id='export DOCKER_ID=`docker ps -ql` && echo $DOCKER_ID'

# remove all containers
alias docker-rmall='docker stop $(docker ps -qa) && docker rm $(docker ps -qa) && docker rmi $(docker images -q)'

# kill all containers
alias docker-killall='docker kill $(docker ps -q)'

# inspect last container created
alias docker-inspect='docker inspect $(docker ps -ql) | less'

# get ip of container
alias docker-ip='docker inspect -f "{{ .NetworkSettings.IPAddress }}"'

# enter last container
alias docker-ns='nsenter --target $(docker inspect --format {{.State.Pid}} $(docker ps -ql)) --mount --uts --ipc --net --pid'

# docker run -it
alias docker-run='docker run -it '

