set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache

set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx GOPATH $XDG_DATA_HOME/go
set -gx GOMODCACHE $XDG_DATA_HOME/go/mod

set -gx DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -gx KUBECONFIG $XDG_CONFIG_HOME/kube
set -gx ANSIBLE_HOME $XDG_CONFIG_HOME/ansible
set -gx ANSIBLE_CONFIG $XDG_CONFIG_HOME/ansible.cfg
set -gx GNUPGHOME $XDG_CONFIG_HOME/gnupg

set -gx ANSIBLE_GALAXY_CACHE_DIR $XDG_CACHE_HOME/ansible/galaxy_cache
set -gx CUDA_CACHE_PATH $XDG_CACHE_HOME/nv

set -gx EDITOR hx

fish_add_path $CARGO_HOME/bin $GOPATH/bin $HOME/.local/bin

set -e SSH_AGENT_PID
if test "$gnupg_SSH_AUTH_SOCK_by" != $fish_pid
    set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
end

set -gx GPG_TTY
gpgconf --launch gpg-agent

set -g fish_greeting

alias ls "eza -lax --group-directories-first"
abbr gpg-switch-key "gpg-connect-agent 'scd serialno' 'learn --force' /bye"

set --local FISH_CONFIG_ROOT (dirname (status --current-filename))
if test -f "$FISH_CONFIG_ROOT/config.local.fish"
    source "$FISH_CONFIG_ROOT/config.local.fish"
end
