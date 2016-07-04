[ -s "/home/fergalm/.dnx/dnvm/dnvm.sh" ] && . "/home/fergalm/.dnx/dnvm/dnvm.sh" # Load dnvm
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

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
