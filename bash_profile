[ -s "/home/fergalm/.kre/kvm/kvm.sh" ] && . "/home/fergalm/.kre/kvm/kvm.sh" # Load kvm
#
# NODE-COMPLETE
# Custom command line tab completion for Node.js
#
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
#
# NODE-COMPLETE
# Custom command line tab completion for Node.js
#
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
