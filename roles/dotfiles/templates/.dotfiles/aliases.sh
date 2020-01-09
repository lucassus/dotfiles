alias docker_clean="docker system prune --all --volumes"

alias my_ip="curl ifconfig.me/ip"

help() {
  curl cheat.sh/$@
}
