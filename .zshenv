export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export ANTIDOTE_HOME="$XDG_CACHE_HOME/antidote"

export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

export ANSIBLE_HOME="$XDG_CONFIG_HOME/ansible"
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="$XDG_CACHE_HOME/ansible/galaxy_cache"

export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

export PATH="$CARGO_HOME/bin":$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="$XDG_CONFIG_HOME/emacs/bin":$PATH

export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons
export EXA_COLORS="xa=37:su=37:sf=37:ur=37:uw=37:ux=37:ue=37:gr=37:gw=37:gx=37:tr=37:tw=37:tx=37:uu=37;1:un=37:gu=37:gn=37:sn=37:sb=37:da=37:xx=37"