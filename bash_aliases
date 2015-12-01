
#Django stuff
alias djrun="source /home/fergalm/Dropbox/development/deepsouthsounds.com/dss.docker/api_env && python manage.py runserver 0.0.0.0:8001"
alias djshell="python manage.py shell_plus --use-pythonrc --ipython"
alias dbshell="python manage.py dbshell"
alias djmigrate="python manage.py schemamigration spa --auto"
alias dss="cd ~/Dropbox/development/deepsouthsounds.com/dss.api && workon dss"
alias dss_radio="cd ~/Dropbox/development/deepsouthsounds.com/dss.radio && workon dss.radio && docker start dssdocker_icecast_1"
alias pgdo="sudo -u postgres"

alias reloadbashrc="source ~/.bashrc"
alias rmdb="find . -name \*\'s\ conflicted\ copy\ \* -exec rm  {} \;"
alias server="python -m SimpleHTTPServer 9999"
alias upd="sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove"
alias psql="sudo -u postgres psql deepsouthsounds"
alias dbstatus="dropbox.py status"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias iotop='sudo iotop'
alias rmq=' sudo rabbitmqctl'
alias congo='node /srv/dev/working/congo/server.js'

alias andconnect='adb connect 10.1.1.102:5555'

doAgFind(){
    ag --ignore-dir node_modules --ignore-dir bower_components $1
}
alias ag=doAgFind

doGrepSearch(){
    find | grep $1
}
alias f=doGrepSearch

doPsKill(){
    sudo ps aux | grep -ie $1 | awk '{print $2}' | xargs kill -9
}
alias pskill=doPsKill

alias docker-nuke="docker rm -f $(docker ps -a -q) && docker rmi $(docker images -q)"
alias dc='docker-compose'
alias docker-rm-untagged='docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")'}
