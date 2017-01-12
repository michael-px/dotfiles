# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias h='history 100'
alias l.='ls -aFd --color=auto'
alias ll='ls -aFl --color=auto'
alias ls='ls -FGh --color=auto'
alias dcleani='docker rmi -f $(docker images -aq -f "dangling=true")'
alias dcleanc='docker rm -vf $(docker ps -aq -f "status=exited")'
alias dlogin="docker login --username=$DOCKER_HUB_USER --password=$DOCKER_HUB_PASSWD"
alias dnet="docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
alias dver="docker inspect --format='version {{.Config.Labels.version}}'"

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar nocaseglob histappend cdspell; do shopt -s "${option}" 2> /dev/null; done
