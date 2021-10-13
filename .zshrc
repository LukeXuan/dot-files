export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh
source $HOME/.local/lib/zsh-autoenv/autoenv.zsh

export SSH_AUTH_SOCK="/run/user/$(id -u)/gnupg/S.gpg-agent.ssh"

# opam configuration
test -r $HOME/.opam/opam-init/init.zsh && . $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH=$PATH:$HOME/.local/bin
export EDITOR="emacsclient -t"
edit() {
    emacsclient -t "$@"
}

export MAKEFLAGS="-kj18"

alias vi=edit
alias vim=edit
alias sdu="sudo dnf update"
alias sdi="sudo dnf install"
alias sdr="sudo dnf remove"
bindkey '^R' history-incremental-pattern-search-backward
