# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# fnm
eval "$(fnm env --use-on-cd)"

# antfu/ni
export NI_CONFIG_FILE="$HOME/.config/ni/nirc"

# zsh plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# starship
eval "$(starship init zsh)"

# direnv
eval "$(direnv hook zsh)"
export DIRENV_LOG_FORMAT=""

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"
