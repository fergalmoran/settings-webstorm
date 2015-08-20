function pips() {
    echo $'\n'$1 >> requirements.txt; pip install $1
}
