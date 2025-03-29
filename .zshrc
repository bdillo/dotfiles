# general shell stuff
set -o vi
export PS1='%~ %# > '
bindkey '^R' history-incremental-search-backward

# homebrew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$(brew --prefix)/opt/llvm/bin:$PATH"

# general aliases
alias ls="ls --color=auto"
alias hg="history -1000 | grep"
alias c="cargo"
alias z="zellij"
alias fullpath="find $(pwd) -maxdepth 1"

# shell history
setopt SHARE_HISTORY

# personal tools
export PATH="$PATH:/Users/bendillon/bin"

# see https://github.com/messense/homebrew-macos-cross-toolchains
set-cargo-linux-cross-compile () {
	export CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=x86_64-linux-gnu-gcc
}
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
