alias docker_clean="docker system prune --all --volumes"

alias my_ip="curl ifconfig.me/ip"

alias ll="ls -la"

help() {
  curl cheat.sh/$@
}
