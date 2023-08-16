if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

unset SSH_AGENT_PID
export GPG_TTY=$(tty)
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

gpg-connect-agent updatestartuptty /bye >/dev/null

setopt AUTO_CD           # Go to folder without using cd
setopt AUTO_PUSHD        # Push the old directory onto the stack on cd
setopt PUSHD_IGNORE_DUPS # No duplicates on the stack
setopt EXTENDED_GLOB     # Extended globbing syntax
setopt CORRECT           # Spelling correction

[[ -e ${ZDOTDIR}/.aliases ]] && source ${ZDOTDIR}/.aliases
[[ -e ${ZDOTDIR}/.zstyles ]] && source ${ZDOTDIR}/.zstyles
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

source /usr/share/zsh-antidote/antidote.zsh
antidote load

