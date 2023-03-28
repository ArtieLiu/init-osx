# plugins
```zsh plugins
plugins=(
    git
    fzf
    autojump
    vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```
# alias
```zsh
alias tree="tree -C"
alias o="open"
alias c='clear'
alias ll='exa -l'
alias mci='mvn clean install'
alias cat='bat'
alias rmlogfiles='sudo rm /private/var/log/asl/*.asl'
alias vim='nvim'

# ---------- docker ------------
alias dps='docker ps'
alias dpsa='docker ps -a'
```