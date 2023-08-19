fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh/plugins/copybuffer )
source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh/plugins/copybuffer/copybuffer.plugin.zsh
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-belak-SLASH-zsh-utils/history )
source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-belak-SLASH-zsh-utils/history/history.plugin.zsh
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-belak-SLASH-zsh-utils/editor )
source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-belak-SLASH-zsh-utils/editor/editor.plugin.zsh
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-powerlevel10k )
source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-powerlevel10k/powerlevel10k.zsh-theme
source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-powerlevel10k/powerlevel9k.zsh-theme
if ! (( $+functions[zsh-defer] )); then
  fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer )
  source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer/zsh-defer.plugin.zsh
fi
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zdharma-continuum-SLASH-fast-syntax-highlighting )
zsh-defer source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zdharma-continuum-SLASH-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions/src )
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-belak-SLASH-zsh-utils/completion )
source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-belak-SLASH-zsh-utils/completion/completion.plugin.zsh
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions )
zsh-defer source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
fpath+=( /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-history-substring-search )
source /home/db/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-history-substring-search/zsh-history-substring-search.plugin.zsh
