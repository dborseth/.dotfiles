source_env ~/.config/environment.d/env.conf
source ~/.local/bin/set_colors

set -x PATH $PATH $HOME/.local/bin $CARGO_HOME/bin $GOPATH/bin

set -e SSH_AGENT_PID
if test "$gnupg_SSH_AUTH_SOCK_by" != $fish_pid
    set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
end

set -gx GPG_TTY
gpgconf --launch gpg-agent

set -g fish_greeting

alias ls "eza -lab --sort=type --time-style='+%d/%m/%d'"
alias gpg-switch-key "gpg-connect-agent 'scd serialno' 'learn --force' /bye"

set --local FISH_CONFIG_ROOT (dirname (status --current-filename))
if test -f "$FISH_CONFIG_ROOT/config.local.fish"
    source "$FISH_CONFIG_ROOT/config.local.fish"
end
