alias rmdb="find . -name \*\'s\ conflicted\ copy\ \* -exec rm  {} \;"
alias djrun="python manage.py runserver_plus 0.0.0.0:8000"
alias server="python -m SimpleHTTPServer 9999"
alias upd="sudo apt-get update && sudo apt-get dist-upgrade"
alias psql="sudo -u postgres psql deepsouthsounds"
alias dss="cd ~/Dropbox/Development/deepsouthsounds.com/dss && workon dss"
alias upd="sudo apt-get update && sudo apt-get dist-upgrade"
alias dropbox="dropbox.py"
alias dbstatus="dropbox.py status"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias iotop='sudo iotop'

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
