# Vim
alias v="mvim --remote-silent $@"

# Bash
alias ff="find . -name"
alias dh="dirs -v"

# Java
# alias java7="export JAVA_HOME=`/usr/libexec/java_home -v1.7`"
#alias java8="export JAVA_HOME=`/usr/libexec/java_home -v1.8`"

# Docker
# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

# Misc (to really collect a lot of space)
alias docker-clean-unused='docker system prune --all --force --volumes'
alias docker-clean-all='docker stop $(docker container ls -a -q) && docker system prune -a -f --volumes'

# Find out IP address of a container
alias dinspect="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"

# Utilities for projects directory layout creation
alias laydirjava='mkdir -p src/{main,test}/{java,resources}'
alias laydirscala='mkdir -p src/{main,test}/{scala,resources}'
alias laydirsjavascala='mkdir -p src/{main,test}/{java,scala,resources}'

# Find out how are my line endings
# Grep all lines ended with CRLF
alias findcrlf="grep -U $'\x0D'"
# Grep all lines ended with LF
alias findlf="grep -U $'\x0A'"

# Remove git conflict resolution cache files
alias rmorig='find . -name "*.orig" -exec rm {} \;'

# Git; show a graph for all commits including stashes
# alias gshow="git log --graph --oneline --decorate $( git fsck --no-reflog | awk '/dangling commit/ {print $3}' ) > /dev/null"

# SolidGo aliases
alias pgsolidgo='docker run --name postgres-db -p 5432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -d postgres -c ssl="on" -c ssl_cert_file="/etc/ssl/certs/ssl-cert-snakeoil.pem" -c ssl_key_file="/etc/ssl/private/ssl-cert-snakeoil.key"'

# SBT
alias s='sbt -v -mem 6144'
alias sbt='sbt -v'

# Bitcoin core regtest in Docker
alias btcd='docker run -v bitcoind-data:/User/marianonavas/.bitcoind --name=bitcoind-node -d \
     -p 8333:8333 \
     -p 127.0.0.1:8332:8332 \
     kylemanna/bitcoind'

# Format an SD card for raspberry Pi
alias formatpi='sudo diskutil eraseDisk FAT32 RASPBIAN MBRFormat /dev/disk2'
