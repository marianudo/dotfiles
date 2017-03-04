# Vim
alias v="mvim --remote-silent $@"

# Bash
alias ff="find . -name"
alias dh="dirs -v"

# Java
alias java7="export JAVA_HOME=`/usr/libexec/java_home -v1.7`"
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

# Google Cloud Platform
alias rabbitmqtunnel='gcloud compute ssh --ssh-flag=-L15672:localhost:15672 --project=optimal-life-112611 --zone europe-west1-b rabbitmq1-stats-node'
alias gcmongo='gcloud compute --project "optimal-life-112611" ssh --zone "europe-west1-b" "mongodb1-instance-1"'
alias gcnode1='gcloud compute --project "optimal-life-112611" ssh --zone "europe-west1-b" "gke-gennion-cluster-d8274901-node-0368"'
alias gcnode2='gcloud compute --project "optimal-life-112611" ssh --zone "europe-west1-b" "gke-gennion-cluster-d8274901-node-5jec"'
alias gcrabbit='gcloud compute --project "optimal-life-112611" ssh --zone "europe-west1-b" "google-developer-console-rabbitmq-rabbitmq1-ram-node-1"'
