if [ -f /etc/bashrc ];then . /etc/bashrc;fi
if [ -f /etc/bash_completion ];then . /etc/bash_completion;fi

umask 002
HISTCONTROL=ignoreboth

declare -x EDITOR=mcedit

alias ~~="cd /www/sites/"

function progress_sleep
{
    for i in `echo -n|awk "END{for(i=0;i<$1;i++)print i;}"`
    do
        echo -n .
        sleep 1
    done
}

pingrf()
{
    ping $(idn --quiet "$@")
}

PS1='\[\e[1;32m\][ \A\[\e[m\] <\u@\h> \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]]\n[ bash: \[\e[m\]\[\e[0;32m\]'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting