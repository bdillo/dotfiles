# general shell stuff
set -o vi
export PS1='%~ %# > '
bindkey '^R' history-incremental-search-backward

# homebrew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:$(brew --prefix)/opt/llvm/bin"

# general aliases
alias ls="ls --color=auto"
alias hg="history -1000 | grep"
alias c="cargo"

# shell history
setopt SHARE_HISTORY

# personal tools
export PATH="$PATH:/Users/bendillon/bin"
