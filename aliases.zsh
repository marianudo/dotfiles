# Vim
alias v="mvim --remote-silent $@"

# Bash
alias ff="find . -name"
alias dh="dirs -v"

# Java
# alias java7="export JAVA_HOME=`/usr/libexec/java_home -v1.7`"
alias java8="export JAVA_HOME=`/usr/libexec/java_home -v1.8`"

# Docker
# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

# Utilities for projects directory layout creation
alias laydirjava='mkdir -p src/{main,test}/{java,resources}'
alias laydirscala='mkdir -p src/{main,test}/{scala,resources}'
alias laydirsjavascala='mkdir -p src/{main,test}/{java,scala,resources}'

# Find out how are my line endings
# Grep all lines ended with CRLF
alias findcrlf="grep -U $'\x0D'"
# Grep all lines ended with LF
alias findlf="grep -U $'\x0A'"
